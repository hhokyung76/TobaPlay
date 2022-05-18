package com.toba.tobaplay.test.scriptengine;

import ch.obermuhlner.scriptengine.java.JavaCompiledScript;
import ch.obermuhlner.scriptengine.java.JavaScriptEngine;
import ch.obermuhlner.scriptengine.java.execution.MethodExecutionStrategy;

import javax.script.*;

public class Test1 {
    public static void main2(String[] args) {
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

    public static void main(String[] args) {
        runCompiledMethodExecutionStrategyMatchingArgumentsExample();
    }

    private static void runCompiledMethodExecutionStrategyMatchingArgumentsExample() {
        try {
            ScriptEngineManager manager = new ScriptEngineManager();
            ScriptEngine engine = manager.getEngineByName("java");
            JavaScriptEngine javaScriptEngine = (JavaScriptEngine) engine;


            JavaCompiledScript compiledScript = javaScriptEngine.compile("" +
                    "public class Script {" +
                    "   public String getMessage(Object message, int value) {" +
                    "       return \"Messag111e: \" + message + value;" +
                    "   } " +
                    "}");

            compiledScript.setExecutionStrategy(MethodExecutionStrategy.byMatchingArguments(
                    compiledScript.getCompiledClass(),
                    "getMessage",
                    "Hello", 42));

            Object result = compiledScript.eval();

            System.out.println("Result: " + result);
        } catch (ScriptException e) {
            e.printStackTrace();
        }
    }
}
