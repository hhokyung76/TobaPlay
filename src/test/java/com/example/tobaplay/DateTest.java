package com.example.tobaplay;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.RandomUtils;

import java.util.Calendar;
import java.util.Date;

public class DateTest {
    public static void main(String[] args) throws InterruptedException {

        for (int ii = 0; ii < 100; ii++) {
            Date date = Calendar.getInstance().getTime();
            long temp = date.getTime();
            System.out.println(date);
            System.out.println("temp: " + temp);

            String str2 = String.format("%d", temp);
            System.out.println("str2: "+str2);

            String rndAlph = RandomStringUtils.randomAlphanumeric(5);
            String jobId = str2+rndAlph;

            System.out.println("jobId: "+jobId);
            Thread.sleep(1000);
        }
    }
}
