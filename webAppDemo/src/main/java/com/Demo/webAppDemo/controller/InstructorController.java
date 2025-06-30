package com.Demo.webAppDemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class InstructorController {

    @GetMapping("instructor")
    public String getInstructor(Map<String, Object> model) {
        return "instructor";
    }
}
