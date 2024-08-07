package com.typerf1.typerf1.controller;

import com.typerf1.typerf1.dto.Score;
import com.typerf1.typerf1.service.ParticipantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ParticipantController {

    private final ParticipantService participantService;

    @Autowired
    public ParticipantController(ParticipantService participantService){
        this.participantService = participantService;
    }

    @GetMapping("/participants")
    public String participants(Model model) {
        model.addAttribute("participants", participantService.getAllParticipants());
        return "participants";
    }

}
