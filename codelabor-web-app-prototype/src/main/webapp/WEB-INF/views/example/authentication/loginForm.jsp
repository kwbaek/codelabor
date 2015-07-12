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
<meta charset="UTF-8">
<title><spring:message code="title.login" /> <system:properties key="servlet.container.id" /></title>
<%@ include file="/WEB-INF/jspf/script.jspf"%>
<%@ include file="/WEB-INF/jspf/style.jspf"%>
<%@ include file="/WEB-INF/jspf/example/favicon.jspf"%>
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
				<h2>
					<spring:message code="heading.login.form" />
				</h2>
				<hr />

				<c:out value="${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}" />

				<fieldset>
					<legend>
						<spring:message code="label.login" />
					</legend>
					<c:url var="loginUrl" value="/example/authentication/login" />
					<form action="${loginUrl}" method="post" autocomplete="off">
						<table class="bodyTable">
							<tr class="b">
								<th><label for="username"><spring:message code="label.username" /></label></th>
								<td><input type="text" id="username" name="j_username" /></td>
							</tr>
							<tr class="b">
								<th><label for="password"><spring:message code="label.password" /></label></th>
								<td><input type="password" id="password" name="j_password" /></td>
							</tr>
							<tr class="b">
								<th><label for="j_remember"><spring:message code="label.rememberMe" /></label></th>
								<td><input type="checkbox" id="j_remember" name="_spring_security_remember_me" /></td>
							</tr>
							<tr class="b">
								<td colspan="2"><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> <input type="submit"
									value="<spring:message code="button.submit"/>" /> <input type="reset" value="<spring:message code="button.reset"/>" /></td>
							</tr>
						</table>
					</form>
				</fieldset>
			</div>
		</div>
	</div>
	<div class="clear">
		<hr />
	</div>
	<%@ include file="/WEB-INF/jspf/example/footer.jspf"%>
</body>
</html>