package com.toba.tobaplay.web.contoller;

import com.google.gson.Gson;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
public class BootstrapController {
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView boardListGet(ModelAndView mv) {
        mv.setViewName("index");
        //기능 코드는 생략
        return mv;
    }


    @RequestMapping("/dashboard")
    public String dashboard() {
        return "index";
    }

    @RequestMapping("/sample-page2")
    public String sample2() {
        return "sample-page2";
    }

    @RequestMapping("/test")
    public String test() {
        return "testmac";
    }

    @RequestMapping("/cookie-page")
    public String cookie_page() {
        return "cookie-page";
    }  //("Access-Control-Allow-Origin", "*");

    @RequestMapping(value="/scoo", method=RequestMethod.GET)
    public void testCookie(HttpServletResponse response){
        Cookie setCookie = new Cookie("tg-id", "tg-9000-1234"); // 쿠키 이름을 name으로 생성
        setCookie.setMaxAge(60*60*24); // 기간을 하루로 지정(60초 * 60분 * 24시간)
        response.addCookie(setCookie); // response에 Cookie 추가
    }

    @RequestMapping(value="/cookie/search", method=RequestMethod.GET)
    @ResponseBody
    public String testCookie(HttpServletRequest req){

        StringBuffer urlSb = req.getRequestURL();
        log.info("urlSb: "+urlSb.toString());

        List<Map<String, Object>> cookieList = new ArrayList<Map<String, Object>>();
        Cookie[] getCookie = req.getCookies(); // 모든 쿠키 가져오기
        if(getCookie != null){ // 만약 쿠키가 없으면 쿠키 생성
            for(int i=0; i<getCookie.length; i++){
                Cookie c = getCookie[i]; // 객체 생성
                String domain = c.getDomain();
                String name = c.getName(); // 쿠키 이름 가져오기
                String value = c.getValue(); // 쿠키 값 가져오기
                Map<String, Object> cookieInfo = new HashMap<String, Object>();
                cookieInfo.put("domain", domain);
                cookieInfo.put("name", name);
                cookieInfo.put("value", value);
                cookieList.add(cookieInfo);

                log.info("cookie: "+c.toString());
                log.info("CookieInfo => domain["+domain+"] name["+name+"] value["+value+"]");
            }
        }
        String json = new Gson().toJson(cookieList);
        return json;
    }


    @RequestMapping("/bc_alert")
    public String bcAlert() {
        return "bc_alert";
    }


    @RequestMapping("/bc_badges")
    public String bc_badges() {
        return "bc_badges";
    }

    @RequestMapping("/bc_breadcrumb-pagination")
    public String bc_breadcrumb_pagination() {
        return "bc_breadcrumb-pagination";
    }

    @RequestMapping("/bc_button")
    public String bc_button() {
        return "bc_button";
    }

    @RequestMapping("/bc_card")
    public String bc_card() {
        return "bc_card";
    }

    @RequestMapping("/bc_carousel")
    public String bc_carousel() {
        return "bc_carousel";
    }

    @RequestMapping("/bc_collapse")
    public String bc_collapse() {
        return "bc_collapse";
    }

    @RequestMapping("/bc_modal")
    public String bc_modal() {
        return "bc_modal";
    }

    @RequestMapping("/bc_progress")
    public String bc_progress() {
        return "bc_progress";
    }

    @RequestMapping("/form_elements")
    public String form_elements() {
        return "form_elements";
    }

    @RequestMapping("/form2_radio")
    public String form2_radio() {
        return "form2_radio";
    }

    @RequestMapping("/form2_input_group")
    public String form2_input_group() {
        return "form2_input_group";
    }

    @RequestMapping("/form2_checkbox")
    public String form2_checkbox() {
        return "form2_checkbox";
    }

    @RequestMapping("/form2_basic")
    public String form2_basic() {
        return "form2_basic";
    }

    @RequestMapping("/chart-apex")
    public String chart_apex() {
        return "chart-apex";
    }
}

