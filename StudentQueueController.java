package com.uwec.gradiance.controller;

import com.uwec.gradiance.QueueNode;
import com.uwec.gradiance.QueueService;
import com.uwec.gradiance.dao.GradienceDao;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/studentQueue")
public class StudentQueueController {
    private final QueueService queueService;
    private final GradienceDao dao;

    public StudentQueueController(QueueService queueService, GradienceDao dao) {
        this.queueService = queueService;
    }

    @GetMapping
    public String home(Model model) {
        model.addAttribute("students", queueService.list());
        // If your available classes / evaluations are dynamic, supply them here:
        model.addAttribute("classes", List.of("Class1", "Class2"));
        model.addAttribute("evaluations", List.of("Competency1", "Competency2"));
        return "studentQueue";
    }

    @PostMapping("/join")
    public String joinQueue(
            @RequestParam("email") String email,
            @RequestParam("course") String course,
            @RequestParam("evaluation") String evaluation
    ) {
        queueService.join(email, course, evaluation);
        // redirect so that a page refresh doesn’t repost the form
        return "redirect:/studentQueue";
    }
}