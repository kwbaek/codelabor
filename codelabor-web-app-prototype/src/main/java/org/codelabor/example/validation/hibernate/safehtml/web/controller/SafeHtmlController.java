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
package org.codelabor.example.validation.hibernate.safehtml.web.controller;

import javax.validation.Valid;

import org.codelabor.example.validation.hibernate.safehtml.dto.WhitListTypeDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/example/validation/hibernate/safeHtml")
public class SafeHtmlController {

	private final Logger logger = LoggerFactory.getLogger(SafeHtmlController.class);

	private final static String FORM_VIEW_NAME = "example/validation/hibernate/safe-html/form";
	private final static String COMPLETED_VIEW_NAME = "example/validation/hibernate/safe-html/completed";

	@RequestMapping(value = "/whitListType", method = RequestMethod.POST)
	public String performPost(@Valid WhitListTypeDto whitListTypeDto, BindingResult result) {
		logger.debug("performPost");
		logger.debug("whitListTypeDto: {}", whitListTypeDto);
		if (result.hasErrors()) {
			for (ObjectError error : result.getAllErrors()) {
				logger.error("error: {}", error.getDefaultMessage());
			}
			return FORM_VIEW_NAME;
		} else {
			// TODO: invoke service
			return COMPLETED_VIEW_NAME;
		}
	}

	@RequestMapping(value = "/whitListType", method = RequestMethod.GET)
	public ModelAndView preparePost(ModelAndView mav) {
		logger.debug("preparePost");
		mav.setViewName(FORM_VIEW_NAME);
		mav.addObject("whitListTypeDto", new WhitListTypeDto());
		return mav;
	}
}
