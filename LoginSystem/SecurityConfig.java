// src/main/java/com/uwec/gradiance/config/SecurityConfig.java
package com.uwec.gradiance.config;

import com.uwec.gradiance.dao.GradienceDao;
import com.uwec.gradiance.entity.UserEntity;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.List;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public UserDetailsService userDetailsService(GradienceDao dao) {
        return username -> {
            List<UserEntity> users = dao.findAll(UserEntity.class);
            UserEntity user = users.stream()
                    .filter(u -> u.getEmail().equalsIgnoreCase(username))
                    .findFirst()
                    .orElseThrow(() -> new UsernameNotFoundException("User not found: " + username));
            return User.withUsername(user.getEmail())
                    .password(user.getPasswordHash())
                    .roles("USER")
                    .build();
        };
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests(auth -> auth
                .requestMatchers(
                    "/newuser", "/css/**", "/js/**", "/login", "/logout"
                ).permitAll()
                .anyRequest().authenticated()
            )
            .formLogin(form -> form
                .loginPage("/login")
                .defaultSuccessUrl("/studentQueue", true)
                .permitAll()
            )
            .logout(logout -> logout
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login?logout")
                .permitAll()
            );
        return http.build();
    }
}