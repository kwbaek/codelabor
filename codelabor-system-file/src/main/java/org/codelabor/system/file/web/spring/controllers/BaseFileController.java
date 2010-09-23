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

package org.codelabor.system.file.web.spring.controllers;

import org.codelabor.system.file.managers.FileManager;
import org.springframework.web.servlet.mvc.AbstractController;

import anyframe.core.idgen.IIdGenerationService;
import anyframe.core.properties.IPropertiesService;

public abstract class BaseFileController extends AbstractController {

	protected FileManager fileManager;
	protected IPropertiesService propertiesService;
	protected IIdGenerationService uniqueFileNameGenerationService;
	protected String successView;
	protected IIdGenerationService mapIdGenerationService;

	public void setFileManager(FileManager fileManager) {
		this.fileManager = fileManager;
	}

	public void setPropertiesService(IPropertiesService propertiesService) {
		this.propertiesService = propertiesService;
	}

	public void setUniqueFileNameGenerationService(
			IIdGenerationService uniqueFileNameGenerationService) {
		this.uniqueFileNameGenerationService = uniqueFileNameGenerationService;
	}

	public String getSuccessView() {
		return successView;
	}

	public void setSuccessView(String successView) {
		this.successView = successView;
	}

	public void setMapIdGenerationService(
			IIdGenerationService mapIdGenerationService) {
		this.mapIdGenerationService = mapIdGenerationService;
	}

}