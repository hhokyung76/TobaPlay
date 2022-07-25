package com.example.tobaplay;


import com.google.gson.JsonElement;
import io.vertx.core.json.JsonObject;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.HttpClientBuilder;

public class HttpClientTest {
    public static void main(String[] args) {
        	try {
                JsonObject obj = new JsonObject();
                /*
                tgMode: tgMode,
                redirectUrl: redirectUrl,
                referrerUrl: referrerUrl
                 */
                obj.put("tgMode", "M-21");
                obj.put("redirectUrl", "redirectUrl-21");
                obj.put("referrerUrl", "referrerUrl-21");
                HttpClient client = HttpClientBuilder.create().build(); // HttpClient 생성
                HttpPost postRequest = new HttpPost("http://localhost:9101/tgd"); //POST 메소드 URL 새성
                //postRequest.setHeader("Accept", "application/json");
                //postRequest.setHeader("Connection", "keep-alive");
                //postRequest.setHeader("Content-Type", "application/json");
//                Object RestTestCommon;
//                postRequest.addHeader("x-api-key", RestTestCommon.API_KEY); //KEY 입력
//                postRequest.addHeader("Authorization", token); // token 이용시
                postRequest.setEntity(new StringEntity(obj.toString())); //json 메시지 입력
                HttpResponse response = client.execute(postRequest);			//Response 출력
                if (response.getStatusLine().getStatusCode() == 200) {
                     ResponseHandler<String> handler = new BasicResponseHandler();
                     String body = handler.handleResponse(response);
                     System.out.println(body);
                } else {
                    System.out.println("response is error : " + response.getStatusLine().getStatusCode());
                }
            } catch (Exception e){
                System.err.println(e.toString());
            }


    }
}
