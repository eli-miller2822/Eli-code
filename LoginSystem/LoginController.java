// src/main/java/com/uwec/gradiance/controller/LoginController.java
package com.uwec.gradiance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @GetMapping("/login")
    public String showLogin() {
        return "login";
    }
}