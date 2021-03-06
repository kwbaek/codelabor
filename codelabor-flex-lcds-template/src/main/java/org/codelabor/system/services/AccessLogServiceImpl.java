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

package org.codelabor.system.services;

import org.codelabor.system.dtos.AccessLogDTO;
import org.codelabor.system.exceptions.CommonException;
import org.codelabor.system.exceptions.RollbackCommonException;
import org.codelabor.system.managers.AccessLogManager;

/**
 * @author SangJae Shin
 * 
 */
public class AccessLogServiceImpl extends BaseServiceImpl implements
		AccessLogService {

	private AccessLogManager accessLogManager;

	public void accessLog(AccessLogDTO accessLogDTO) throws Exception {
		try {
			accessLogManager.accessLog(accessLogDTO);
		} catch (Exception e) {
			String messageCode = "ERROR-ACCESS-LOG-0000";
			String messageKey = "error.access.log";
			Object[] messageParams = new Object[] {};
			CommonException commonException = new RollbackCommonException(
					messageSource, messageKey, messageParams, e);
			commonException.setMessageCode(messageCode);
			throw commonException;
		}
	}

	public AccessLogManager getAccessLogManager() {
		return accessLogManager;
	}

	public void setAccessLogManager(AccessLogManager accessLogManager) {
		this.accessLogManager = accessLogManager;
	}

}
