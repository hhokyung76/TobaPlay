package com.toba.tobaplay.terminal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

//@Component
public class ApplicationAdapter implements CommandLineRunner {

    @Override
    public void run(String... args) throws Exception {
        if (args[0].equals("all")) {
            System.out.println("command all... called");
        } else if (args[0].equals("delete"))
            System.out.println("command delete... called");
    }
}