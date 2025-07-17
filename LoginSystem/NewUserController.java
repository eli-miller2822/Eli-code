// src/main/java/com/uwec/gradiance/controller/NewUserController.java
package com.uwec.gradiance.controller;

import com.uwec.gradiance.entity.UserEntity;
import com.uwec.gradiance.dao.GradienceDao;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class NewUserController {
    private final GradienceDao dao;
    private final PasswordEncoder passwordEncoder;

    public NewUserController(GradienceDao dao, PasswordEncoder passwordEncoder) {
        this.dao = dao;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/newuser")
    public String showForm(Model model) {
        model.addAttribute("courses", List.of(
            "Intro to Programming", "Computer Systems",
            "Software Engineering 1", "Software Engineering 2"
        ));
        return "newuser";
    }

    @PostMapping("/newuser")
    public String register(
        @RequestParam String firstName,
        @RequestParam(required = false) String middleInitial,
        @RequestParam String lastName,
        @RequestParam String schoolId,
        @RequestParam String email,
        @RequestParam String password
    ) {
        String hash = passwordEncoder.encode(password);
        UserEntity user = UserEntity.builder()
            .firstName(firstName)
            .middleInitial(middleInitial)
            .lastName(lastName)
            .schoolId(schoolId)
            .email(email)
            .passwordHash(hash)
            .build();
        dao.save(user);
        return "redirect:/login?registered";
    }
}