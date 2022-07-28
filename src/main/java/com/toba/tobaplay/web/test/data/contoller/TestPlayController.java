package com.toba.tobaplay.web.test.data.contoller;

import com.google.gson.Gson;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/api/v1/")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class TestPlayController {

    @RequestMapping(value = "/testdatas", method = RequestMethod.GET)
    @ResponseBody
    public String scheduleManager() {
        List<DataTemp> list = new ArrayList<DataTemp>();
        for (int ii = 0; ii < 10; ii++) {
            DataTemp newObj = new DataTemp();
            newObj.setA("A"+ii);
            newObj.setB("B"+ii);
            newObj.setC("C"+ii);
            newObj.setD("D"+ii);
            newObj.setE("E"+ii);
            newObj.setF("F"+ii);
            newObj.setG("G"+ii);
            newObj.setH("H"+ii);
            list.add(newObj);
        }

        Map<String, Object> returnVal = new HashMap<>();
        returnVal.put("list", list);
        returnVal.put("page", 1);

        Gson gson = new Gson();
        String jsonData = gson.toJson(returnVal);

        //System.out.println("jsonData: "+jsonData);
        return jsonData;
    }



}

