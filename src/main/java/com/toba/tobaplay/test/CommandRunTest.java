package com.toba.tobaplay.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class CommandRunTest {
    public static void main(String[] args) {

        String domainName = "google.com";
        String command = "host -t a " + domainName;
        executeCommand(command);
        executeCommand("ls -al");
    }


    private static String executeCommand(String taskInfo) {

        StringBuffer output = new StringBuffer();

        Process p;
        try {
            System.out.println("1");
            p = Runtime.getRuntime().exec(taskInfo);
            p.waitFor();
            System.out.println("2");
            BufferedReader reader =
                    new BufferedReader(new InputStreamReader(p.getInputStream()));

            String line = "";
            System.out.println("3");
            while ((line = reader.readLine())!= null) {
                System.out.println("line: "+line);
                output.append(line + "\n");
            }

            System.out.println("4");
        } catch (Exception e) {
            e.printStackTrace();
        }

        return output.toString();

    }


}
