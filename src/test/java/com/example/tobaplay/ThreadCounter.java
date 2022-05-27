package com.example.tobaplay;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;

public class ThreadCounter implements Callable<String> {
    static AtomicInteger counter = new AtomicInteger(0); // a global counter

    public ThreadCounter() {
    }

    static void incrementCounter() {
        counter.getAndIncrement();
//        System.out.println(Thread.currentThread().getName() + ": " + counter.getAndIncrement());
    }

    public static void main(String[] args) throws InterruptedException, ExecutionException {

        counter.set(0);
        for (int ii = 0; ii < 5; ii++) {
            System.out.println("##started counter: "+counter.get());
            ThreadCounter te1 = new ThreadCounter();
            ThreadCounter te2 = new ThreadCounter();
            ThreadCounter te3 = new ThreadCounter();
//        Thread thread1 = new Thread(te);
//        Thread thread2 = new Thread(te);
            List<Callable<String>> taskList = new ArrayList<>();
            taskList.add(te1);
            //taskList.add(te2);
            //taskList.add(te3);


            ExecutorService executorService = Executors.newFixedThreadPool(5);
            List<Future<String>> futures = executorService.invokeAll(taskList);


            for (Future<String> f : futures) {
                System.out.println(f.get()); // Hello, Java, Dong Wook 순서대로 출력된다.
            }
            executorService.shutdown();
            System.out.println("$$ counter: " + counter.get());
            counter.set(0);
        }
    }

    @Override
    public String call() throws Exception {
        while(counter.get() < 1000){
            incrementCounter();
        }
        return null;
    }
}