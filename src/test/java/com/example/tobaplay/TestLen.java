package com.example.tobaplay;

public class TestLen {

    public static void main(String[] args) {
        StringBuffer sb = new StringBuffer();
        System.out.println("sb.length: "+sb.length());

        for (int ii = 0 ; ii < 10; ii++) {
            sb.append("good-"+ii);
        }
        System.out.println("sb.length: "+sb.length());
    }
}
