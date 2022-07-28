package com.toba.tobaplay.web.contoller;

import com.google.gson.Gson;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
public class PlayController {

    @RequestMapping(value = "/job-manager", method = RequestMethod.GET)
    public String jobManager() {
        return "/schedule/job_manager";
    }

    @RequestMapping(value = "/task-manager", method = RequestMethod.GET)
    public String taskManager() {
        return "/schedule/task_manager";
    }



}

