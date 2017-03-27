package com.example.functional;

import org.junit.BeforeClass;

import com.jayway.restassured.RestAssured;

public class FunctionalTest {

	@BeforeClass
	public static void setup() {
		String port = System.getProperty("server.port");
		if (port == null) {
			port = System.getenv("server.port");
			System.out.println("port 1: " + port);
			if (port == null) {
				port = "8080";
			}
			RestAssured.port = Integer.valueOf(port);
		} else {
			RestAssured.port = Integer.valueOf(port);
		}

		String basePath = System.getProperty("server.base");
		if (basePath == null) {
			basePath = "";
		}
		RestAssured.basePath = basePath;

		String baseHost = System.getProperty("server.host");
		if (baseHost == null) {
			baseHost = System.getenv("server.host");
			if (baseHost == null) {
				baseHost = "http://localhost";
			}
		}
		RestAssured.baseURI = baseHost;

	}

}