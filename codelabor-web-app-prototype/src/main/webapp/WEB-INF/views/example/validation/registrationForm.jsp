<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/taglib.jspf"%>
<!DOCTYPE html>
<!--
  - Copyright(c)2007 by codelabor.org
  - 
  - Licensed under the Apache License, Version 2.0 (the "License");
  - you may not use this file except in compliance with the License.
  - You may obtain a copy of the License at
  - 
  -     http://www.apache.org/licenses/LICENSE-2.0
  - 
  - Unless required by applicable law or agreed to in writing, software
  - distributed under the License is distributed on an "AS IS" BASIS,
  - WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  - See the License for the specific language governing permissions and
  - limitations under the License.
  -->
<!--
  - Author(s): Sang Jae Shin
  -->
<html>
<head>
<meta charset="UTF-8" />
<!-- Registration Form -->
<title><spring:message code="title.example.validation.registration" /> <system:properties key="servlet.container.id" /></title>
<%@ include file="/WEB-INF/jspf/script.jspf"%>
<%@ include file="/WEB-INF/jspf/style.jspf"%>
</head>
<body class="composite">
	<%@ include file="/WEB-INF/jspf/example/header.jspf"%>
	<div id="breadcrumbs">
		<%@ include file="/WEB-INF/jspf/example/breadcrumb.jspf"%>
	</div>
	<div id="leftColumn">
		<div id="navcolumn">
			<%@ include file="/WEB-INF/jspf/example/navigation.jspf"%>
		</div>
	</div>
	<div id="bodyColumn">
		<div id="contentBox">
			<div class="section">
				<!-- Registration Form -->
				<h2>
					<spring:message code="heading.example.validation.registration.form" />
				</h2>
				<hr />


				<div id="global.errors.area"></div>

				<form:form commandName="personDto">

					<form:errors path="*" />
					<codelaborForm:errors path="*" />

					<table class="bodyTable">
						<tr class="b">
							<!-- Username -->
							<th><spring:message code="label.username" /></th>
							<td><input type="text" id="username" name="username" placeholder="<spring:message code="NotBlank.personDto.username" />" maxlength="12"></input></td>
							<td><form:errors path="username" /></td>
						</tr>
						<tr class="b">
							<!-- Password -->
							<th><spring:message code="label.password" /></th>
							<td><form:password path="password" /></td>
							<td><form:errors path="password" /></td>
						</tr>
						<tr class="b">
							<!-- Password Confirmation -->
							<th><spring:message code="label.passwordConfirm" /></th>
							<td><form:password path="passwordConfirm" /></td>
							<td><form:errors path="passwordConfirm" /></td>
						</tr>
						<tr class="b">
							<!-- First Name -->
							<th><spring:message code="label.firstName" /></th>
							<td><form:input path="firstName" /></td>
							<td><form:errors path="firstName" /></td>
						</tr>
						<tr class="b">
							<!-- Last Name -->
							<th><spring:message code="label.lastName" /></th>
							<td><form:input path="lastName" /></td>
							<td><form:errors path="lastName" /></td>
						</tr>
						<tr class="b">
							<!-- Mobile Phone -->
							<th><spring:message code="label.mobilePhone" /><span>0X-XXX-XXXX, 01X-XXXX-XXXX</span></th>
							<td><form:input path="mobilePhone" /></td>
							<td><form:errors path="mobilePhone" /></td>
						</tr>
						<tr class="b">
							<!-- Home Phone -->
							<th><spring:message code="label.homePhone" /><span>0X-XXX-XXXX, 0X-XXXX-XXXX, 0XX-XXX-XXXX, 0XX-XXXX-XXXX</span></th>
							<td><form:input path="homePhone" /></td>
							<td><form:errors path="homePhone" /></td>
						</tr>
						<tr class="b">
							<!-- Email -->
							<th><spring:message code="label.email" /></th>
							<td><form:input path="email" /></td>
							<td><form:errors path="email" /></td>
						</tr>
						<tr class="b">
							<!-- Email Confirmation -->
							<th><spring:message code="label.emailConfirm" /></th>
							<td><form:input path="emailConfirm" /></td>
							<td><form:errors path="emailConfirm" /></td>
						</tr>
						<tr class="b">
							<!-- Zip Code -->
							<th><spring:message code="label.zipCode" /></th>
							<td><form:input path="zipCode" /></td>
							<td><form:errors path="zipCode" /></td>
						</tr>
						<tr class="b">
							<!-- Birth Date -->
							<th><spring:message code="label.birthDate" /> yyyy-MM-dd</th>
							<td><form:input path="birthDate" /></td>
							<td><form:errors path="birthDate" /></td>
						</tr>
						<tr class="b">
							<td colspan="3"><input type="submit" value="<spring:message code="button.save" />" /> <input type="reset"
								value="<spring:message code="button.reset" />" /></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
	</div>
	<div class="clear">
		<hr />
	</div>
	<%@ include file="/WEB-INF/jspf/example/footer.jspf"%>

</body>
</html>