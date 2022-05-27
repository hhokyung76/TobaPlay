package com.toba.tobaplay;

import com.toba.tobaplay.web.vertx.MainVerticle;
import io.vertx.core.Vertx;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import io.vertx.ext.web.handler.BodyHandler;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
@Slf4j
public class TobaFlowApplication implements CommandLineRunner {

    private Vertx vertx;

    public static void main(String[] args) {

        System.setProperty("spring.devtools.livereload.enabled", "true");
        SpringApplication.run(TobaFlowApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        log.info("## Started TobaFlow Application...");
        vertx = Vertx.vertx();
        //vertx.deployVerticle(new MainVerticle());
        Router router = Router.router(vertx);
        router.route().handler(BodyHandler.create());

        router.get("/user").handler(this::getUsers);
        router.get("/user/:id").handler(this::getById);

        vertx.createHttpServer().requestHandler(router).listen(8888);


    }

    private void getUsers(RoutingContext context) {
        context.response()
                .setStatusCode(200)
                .putHeader("content-type", "text/plain; charset=utf-8")
                .end("Got Users!");
        log.info("getUsers Called....");
    }

    private void getById(RoutingContext context) {
        String id = context.pathParam("id");
        context.response()
                .setStatusCode(200)
                .putHeader("content-type", "text/plain; charset=utf-8")
                .end("Got User " + id + " !" );
        log.info("getById Called....");
    }
}
