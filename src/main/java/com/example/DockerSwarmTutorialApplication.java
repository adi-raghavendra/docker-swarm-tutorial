package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;


@RestController
@EnableAutoConfiguration
@SpringBootApplication
public class DockerSwarmTutorialApplication {

	@RequestMapping("/hello")
    String home() {
        return "Hello World!";
    }


	public static void main(String[] args) {
		SpringApplication.run(DockerSwarmTutorialApplication.class, args);
	}
}
