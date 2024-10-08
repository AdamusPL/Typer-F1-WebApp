package com.typerf1.typerf1.controller;

import com.typerf1.typerf1.model.ParticipantLoginData;
import com.typerf1.typerf1.service.ParticipantLoginDataService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class SignInController {

    public final ParticipantLoginDataService participantLoginDataService;

    public SignInController(ParticipantLoginDataService participantLoginDataService) {
        this.participantLoginDataService = participantLoginDataService;
    }

    @GetMapping("/sign-in")
    public String signin() {
        return "sign-in";
    }

    @PostMapping("/check-data")
    public ResponseEntity<String> login(@RequestBody ParticipantLoginData participantLoginData) {
        return participantLoginDataService.isLoginAndPasswordCorrect(participantLoginData);
    }

    @GetMapping("/get-full-name")
    public @ResponseBody String getFullName(@RequestParam String username){
        return participantLoginDataService.getFullName(username);
    }
}
