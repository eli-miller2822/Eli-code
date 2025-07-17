// src/main/java/com/uwec/gradiance/entity/UserEntity.java
package com.uwec.gradiance.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "users")
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String firstName;

    private String middleInitial;

    @Column(nullable = false)
    private String lastName;

    @Column(nullable = false, unique = true)
    private String schoolId;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false)
    private String passwordHash;
}