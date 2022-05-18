package com.toba.tobaplay.test.scriptengine;

//import com.toba.pool.core.utils.ScStringUtils;
//import com.toba.pool.core.utils.UUIDUtil;
import ch.obermuhlner.scriptengine.java.JavaScriptEngine;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.*;

@Slf4j
public class UUIDVaildatorPoolCallableTest {

	public static void main(String[] args) {
		String checkTargetId = "06754b37-56fc-47bd-897f-10ca1ad1abe1";
		int maxTotal = 3;
		ExecutorService executor = Executors.newFixedThreadPool(8);

		List<Callable<String>> valStatusJobs = new ArrayList<>();

		String checkTargetId2 = "06754b37-56fc-47bd-897f-10ca1ad1";
		ScriptEngineManager manager = new ScriptEngineManager();
		ScriptEngine engine = manager.getEngineByName("java");
		JavaScriptEngine javaScriptEngine = (JavaScriptEngine) engine;


		for (int ii = 0; ii < 300; ii++) {
			String temp = StringUtils.leftPad(Integer.toString(ii), 4, "0");
			UuidValidatorCallable callable = new UuidValidatorCallable(ii, javaScriptEngine);
			valStatusJobs.add(callable);

		}

		List<Future<String>> resultList = null;
		try {
			resultList = executor.invokeAll(valStatusJobs);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		for (Future<String> future : resultList) {
			try {
				log.debug("return:{}",future.get());
			} catch (InterruptedException e) {
				e.printStackTrace();
			} catch (ExecutionException e) {
				e.printStackTrace();
			}
		}
		executor.shutdown();

//		String endTime = ScStringUtils.getCurrentTimeOfLog();
		System.out.println("-----------------------------------------------------------");

//		log.info("## StartTime: "+startTime);
//		log.info("##   EndTime: "+endTime);

	}



}
