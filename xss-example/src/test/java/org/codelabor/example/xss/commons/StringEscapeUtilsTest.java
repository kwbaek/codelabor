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
package org.codelabor.example.xss.commons;

import junit.framework.TestCase;

import org.apache.commons.lang3.StringEscapeUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author Shin Sangjae
 * 
 */
public class StringEscapeUtilsTest extends TestCase {
	Logger logger = LoggerFactory.getLogger(StringEscapeUtilsTest.class);

	public void testEscapeHtml() {
		String beforeReplace = "<b>hello, world!</b>";
		logger.debug("beforeReplace: {}", beforeReplace);
		String afterEscape = StringEscapeUtils.escapeHtml4(beforeReplace);
		logger.debug("StringEscapeUtils.escapeHtml4: {}", afterEscape);
		String afterUnescape = StringEscapeUtils.unescapeHtml4(afterEscape);
		logger.debug("StringEscapeUtils.unescapeHtml4: {}", afterUnescape);
	}
}