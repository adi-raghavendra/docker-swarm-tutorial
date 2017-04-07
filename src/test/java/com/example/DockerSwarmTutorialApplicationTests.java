package com.example;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import junit.framework.Assert;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DockerSwarmTutorialApplicationTests {

	@Test
	public void contextLoads() {
	}
	
	@SuppressWarnings("deprecation")
	@Test
	public void testUnitSample() {
		Assert.assertEquals(1, 1);
	}

}
