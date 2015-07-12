/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.codelabor.example.validation.web.controller;

import javax.validation.Valid;

import org.codelabor.example.validation.dto.PersonDto;
import org.codelabor.example.validation.manager.PersonManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/example/validation/registration")
public class RegistrationController {

	private final Logger logger = LoggerFactory
			.getLogger(RegistrationController.class);

	@Autowired
	private PersonManager personManager;

	private final static String FORM_VIEW_NAME = "example/validation/registrationForm";
	private final static String COMPLETED_VIEW_NAME = "example/validation/registrationCompleted";

	@RequestMapping(value = "/registrationUser", method = RequestMethod.GET)
	public ModelAndView prepareRegistrationUser(ModelAndView mav) {
		logger.debug("prepareRegistrationUser");
		mav.setViewName(FORM_VIEW_NAME);
		mav.addObject("personDto", new PersonDto());
		return mav;
	}

	@RequestMapping(value = "/registrationUser", method = RequestMethod.POST)
	public String registrationUser(@Valid PersonDto personDto,
			BindingResult result) {
		logger.debug("registrationUser");
		logger.debug("personDto: {}", personDto);
		if (result.hasErrors()) {
			for (ObjectError error : result.getAllErrors()) {
				logger.error("error: {}", error.getDefaultMessage());
			}
			return FORM_VIEW_NAME;
		} else {
			personManager.registrationPerson(personDto);
			return COMPLETED_VIEW_NAME;
		}
	}
}
