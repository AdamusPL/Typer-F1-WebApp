package com.typerf1.typerf1.controller;

import com.typerf1.typerf1.dto.Score;
import com.typerf1.typerf1.service.StatisticsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class StatisticsController {

    public final StatisticsService statisticsService;

    public StatisticsController(StatisticsService statisticsService){
        this.statisticsService = statisticsService;
    }

    @GetMapping("/statistics")
    public String statistics() {
        return "statistics";
    }

    @GetMapping("/get-season-scores")
    public @ResponseBody List<Score> scores(@RequestParam Integer year){
        return statisticsService.getScores(year);
    }
}