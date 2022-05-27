package com.toba.tobaplay.web.vertx;

import io.vertx.core.Context;
import io.vertx.core.Promise;
import io.vertx.core.Verticle;
import io.vertx.core.Vertx;

/**
 * @author Keesun Baik
 */
public class Server implements Verticle {

    Vertx vertx;


    @Override
    public Vertx getVertx() {
        return null;
    }

    @Override
    public void init(Vertx vertx, Context context) {
        vertx = vertx;
    }

    @Override
    public void start(Promise<Void> startPromise) throws Exception {

    }

    @Override
    public void stop(Promise<Void> stopPromise) throws Exception {

    }
}