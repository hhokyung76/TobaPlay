package com.toba.tobaplay.test.scriptengine;

import javax.script.*;

public class Test1 {
    public static void main(String[] args) {
        try {
            ScriptEngineManager manager = new ScriptEngineManager();
            ScriptEngine engine = manager.getEngineByName("java");
            Compilable compiler = (Compilable) engine;

            CompiledScript compiledScript = compiler.compile("" +
                    "package script;" +
                    "public class Script implements java.util.function.Supplier<String> {" +
                    "   private int counter = 1;" +
                    "   @Override" +
                    "   public String get() {" +
                    "       return \"Hello World #\" + counter++;" +
                    "   } " +
                    "}");

            Object result1 = ((CompiledScript) compiledScript).eval();
            System.out.println("Result1: " + result1);

            Object result2 = compiledScript.eval();
            System.out.println("Result2: " + result2);
        } catch (ScriptException e) {
            e.printStackTrace();
        }
    }
}
