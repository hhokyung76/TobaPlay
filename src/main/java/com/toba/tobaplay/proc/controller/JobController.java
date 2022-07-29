package com.toba.tobaplay.proc.controller;

import com.toba.tobaplay.proc.dto.JobDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Slf4j
@Controller
@RequestMapping("/job")
public class JobController {

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String jobManager(JobDto jobDto) {
        System.out.println("jobDto: "+jobDto);
        return "/schedule/job_manager";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String taskManager() {
        return "/schedule/task_manager";
    }



}
