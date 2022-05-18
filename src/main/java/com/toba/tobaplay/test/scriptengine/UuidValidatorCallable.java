package com.toba.tobaplay.test.scriptengine;

import ch.obermuhlner.scriptengine.java.JavaCompiledScript;
import ch.obermuhlner.scriptengine.java.JavaScriptEngine;
import ch.obermuhlner.scriptengine.java.execution.MethodExecutionStrategy;
import com.toba.tobaplay.util.ScStringUtils;
import com.toba.tobaplay.util.UUIDUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StopWatch;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;

@Slf4j
public class UuidValidatorCallable implements Callable<String> {

    private String checkTargetStr;

    private int index;

    private JavaScriptEngine javaScriptEngine;

    public UuidValidatorCallable(int no, JavaScriptEngine engine) {
        index = no;
        javaScriptEngine = engine;
    }

    @Override
    public String call() throws Exception {
        String result = Thread.currentThread().getName()+"=>Called at " + ScStringUtils.getCurrentTimeOfLog();

        //String checkTargetId = "06754b37-56fc-47bd-897f-10ca1ad1abe1";

        StopWatch stopWatch = new StopWatch();
        stopWatch.start();

        LinkedHashMap<String, Object> gval = null;
        try {
//            ScriptEngineManager manager = new ScriptEngineManager();
//            ScriptEngine engine = manager.getEngineByName("java");
//            JavaScriptEngine javaScriptEngine = (JavaScriptEngine) engine;


            JavaCompiledScript compiledScript = javaScriptEngine.compile( ""
                    +"import java.util.LinkedHashMap; "
                    +" public class Script {"
                    +"   public LinkedHashMap<String, Object> getMessage(Object message, int value) {"
                    +"       LinkedHashMap<String, Object> temp = new LinkedHashMap<String, Object>(); "
                    +"       temp.put((String) message, value); "
                    +"       return temp; "
                    +"   } "
                    +"}");

            compiledScript.setExecutionStrategy(MethodExecutionStrategy.byMatchingArguments(
                    compiledScript.getCompiledClass(),
                    "getMessage",
                    "Hello", index));

            gval = (LinkedHashMap<String, Object>) compiledScript.eval();

            System.out.println("Thread["+Thread.currentThread().getName()+"] Result: " + gval);
        } catch (ScriptException e) {
            e.printStackTrace();
        }
        stopWatch.stop();
        result += gval.toString()+" Thread["+Thread.currentThread().getName()+"] "+ScStringUtils.getCurrentTimeOfLog()+" "+stopWatch.getTotalTimeMillis();
        return result;
    }

    public static void task2(UUIDUtil uuidUtil, String uuid) {
        boolean checkedUuid = uuidUtil.isValidUUID(uuid);
        log.info("uuid: " + uuid+" // checkedUuid: "+checkedUuid);
    }
}
