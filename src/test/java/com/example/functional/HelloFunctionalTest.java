package com.example.functional;

import org.junit.Test;
import static com.jayway.restassured.RestAssured.given;
import static org.hamcrest.Matchers.containsString;


public class HelloFunctionalTest extends FunctionalTest{

    @Test
    public void basicPingTest() {
        given().when().get("/hello").then().statusCode(200);
    }
    
    
    @Test
    public void verifyNameOfGarage() {
        given().when().get("/hello").then()
            .body(containsString("Hello World!"));
    }

}