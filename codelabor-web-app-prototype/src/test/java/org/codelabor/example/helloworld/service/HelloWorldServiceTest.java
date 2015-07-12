package org.codelabor.example.helloworld.service;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HelloWorldServiceTest {

	private final Logger logger = LoggerFactory.getLogger(HelloWorldServiceTest.class);

	private HelloWorldService helloWorldService = null;

	@Before
	public void setUp() throws Exception {
		helloWorldService = new HelloWorldServiceImpl();
	}

	@Test
	public void testSayHello() {
		String message = helloWorldService.sayHello();
		logger.debug("message: {}", message);
		Assert.assertEquals("Hello, World!", message);
	}

	@Test
	public void testSayHelloString() {
		String name = "Bomber";
		String message = helloWorldService.sayHello(name);
		logger.debug("message: {}", message);
		Assert.assertEquals("Hello, Bomber!", message);
	}

}
