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
package javax.validation;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.codelabor.example.validation.hibernate.safehtml.dto.SafeHtmlWhitelistNoneDto;
import org.codelabor.example.validation.hibernate.safehtml.dto.SafeHtmlWhitelistRelexedAdditionalTagsDto;
import org.codelabor.example.validation.hibernate.safehtml.dto.SafeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto;
import org.codelabor.example.validation.hibernate.safehtml.dto.SafeHtmlWhitelistRelexedDto;
import org.codelabor.example.validation.hibernate.safehtml.dto.StringListDto;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HibernateValidatorTest {

	private final Logger logger = LoggerFactory.getLogger(HibernateValidatorTest.class);

	private static Validator validator;

	@Before
	public void setUp() throws Exception {
		validator = Validation.buildDefaultValidatorFactory().getValidator();
	}

	@Test
	public void testNotEmpty1() throws Exception {
		StringListDto stringListDto = new StringListDto();

		List<String> stringListData = new ArrayList<String>();
		stringListData.add("<h1>heading1</h1>");
		stringListDto.setStringListData(stringListData);

		Set<ConstraintViolation<StringListDto>> constraintViolations = validator.validate(stringListDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(0, constraintViolations.size());
	}

	@Test
	public void testNotEmpty2() throws Exception {
		StringListDto stringListDto = new StringListDto();

		List<String> stringListData = new ArrayList<String>();
		stringListDto.setStringListData(stringListData);

		Set<ConstraintViolation<StringListDto>> constraintViolations = validator.validate(stringListDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(1, constraintViolations.size());
	}

	@Test
	public void testNotEmpty3() throws Exception {
		StringListDto stringListDto = new StringListDto();

		List<String> stringListData = null;
		stringListDto.setStringListData(stringListData);

		Set<ConstraintViolation<StringListDto>> constraintViolations = validator.validate(stringListDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(1, constraintViolations.size());
	}

	@Test
	public void testSafehtmlWhitelistNone() throws Exception {
		SafeHtmlWhitelistNoneDto safeHtmlWhitelistNoneDto = new SafeHtmlWhitelistNoneDto();

		safeHtmlWhitelistNoneDto.setStringData1("<div>1234qwer</div>");
		Set<ConstraintViolation<SafeHtmlWhitelistNoneDto>> constraintViolations = validator.validate(safeHtmlWhitelistNoneDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(1, constraintViolations.size());

		safeHtmlWhitelistNoneDto.setStringData1("<span>1234qwer</span>");
		constraintViolations = validator.validate(safeHtmlWhitelistNoneDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(1, constraintViolations.size());

		safeHtmlWhitelistNoneDto.setStringData1("<td>1234qwer</td>");
		constraintViolations = validator.validate(safeHtmlWhitelistNoneDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(1, constraintViolations.size());

		safeHtmlWhitelistNoneDto.setStringData1("<tr>1234qwer</tr>");
		constraintViolations = validator.validate(safeHtmlWhitelistNoneDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(1, constraintViolations.size());
	}

	@Test
	public void testSafehtmlWhitelistRelexed() throws Exception {
		SafeHtmlWhitelistRelexedDto safeHtmlWhitelistRelexedDto = new SafeHtmlWhitelistRelexedDto();

		Set<ConstraintViolation<SafeHtmlWhitelistRelexedDto>> constraintViolations = null;

		safeHtmlWhitelistRelexedDto.setStringData1("<script>alert('hello, world!');</script>");
		constraintViolations = validator.validate(safeHtmlWhitelistRelexedDto);
		logger.error("violation count: {}", constraintViolations.size());
		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(1, constraintViolations.size());

		safeHtmlWhitelistRelexedDto.setStringData1("<a href='http://www.google.com'>google</a>");
		constraintViolations = validator.validate(safeHtmlWhitelistRelexedDto);
		logger.error("violation count: {}", constraintViolations.size());
		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(0, constraintViolations.size());

		safeHtmlWhitelistRelexedDto.setStringData1("<div>1234qwer</div>");
		constraintViolations = validator.validate(safeHtmlWhitelistRelexedDto);
		logger.error("violation count: {}", constraintViolations.size());
		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(0, constraintViolations.size());

		safeHtmlWhitelistRelexedDto.setStringData1("<span>1234qwer</span>");
		constraintViolations = validator.validate(safeHtmlWhitelistRelexedDto);
		logger.error("violation count: {}", constraintViolations.size());
		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(0, constraintViolations.size());
	}

	@Test
	public void testSafehtmlWhitelistRelexedAdditionalTags() throws Exception {
		SafeHtmlWhitelistRelexedAdditionalTagsDto safeHtmlWhitelistRelexedAdditionalTagsDto = new SafeHtmlWhitelistRelexedAdditionalTagsDto();
		safeHtmlWhitelistRelexedAdditionalTagsDto.setStringData1("<script>alert('hello, world!');</script>");
		Set<ConstraintViolation<SafeHtmlWhitelistRelexedAdditionalTagsDto>> constraintViolations = validator
				.validate(safeHtmlWhitelistRelexedAdditionalTagsDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(0, constraintViolations.size());

		safeHtmlWhitelistRelexedAdditionalTagsDto.setStringData1("<script charset=\"UTF-8\">alert('hello, world!');</script>");
		constraintViolations = validator.validate(safeHtmlWhitelistRelexedAdditionalTagsDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(1, constraintViolations.size());
	}

	@Test
	public void testSafehtmlWhitelistRelexedAdditionalTagsWithAttributes() throws Exception {
		SafeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto safeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto = new SafeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto();
		safeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto.setStringData1("<span>1234qwer</span>");
		Set<ConstraintViolation<SafeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto>> constraintViolations = validator
				.validate(safeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(0, constraintViolations.size());

		safeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto.setStringData1("<span class=\"style1\">1234qwer</span>");
		constraintViolations = validator.validate(safeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(0, constraintViolations.size());

		safeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto.setStringData1("<span id=\"id1\">1234qwer</span>");
		constraintViolations = validator.validate(safeHtmlWhitelistRelexedAdditionalTagsWithAttributesDto);
		logger.error("violation count: {}", constraintViolations.size());

		for (ConstraintViolation<?> violation : constraintViolations) {
			logger.error("executableParameters: {}", violation.getExecutableParameters());
			logger.error("executableReturnValue: {}", violation.getExecutableReturnValue());
			logger.error("constraintDescriptor: {}", violation.getConstraintDescriptor());
			logger.error("propertyPath: {}", violation.getPropertyPath());
			logger.error("invalidValue: {}", violation.getInvalidValue());
			logger.error("message: {}", violation.getMessage());
		}
		Assert.assertEquals(1, constraintViolations.size());
	}

}
