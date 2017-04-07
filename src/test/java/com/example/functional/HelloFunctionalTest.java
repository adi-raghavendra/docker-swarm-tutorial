package com.example.functional;

import static com.jayway.restassured.RestAssured.given;
import static org.hamcrest.Matchers.containsString;

import org.junit.Test;
import org.junit.experimental.categories.Category;


public class HelloFunctionalTest extends FunctionalTest{

    @Test
    public void basicPingTest() {
        given().when().get("/hello").then().statusCode(200);
    }
    
    
    @Test
    public void verifyResponse() {
        given().when().get("/hello").then()
            .body(containsString("Hello World!"));
    }

}