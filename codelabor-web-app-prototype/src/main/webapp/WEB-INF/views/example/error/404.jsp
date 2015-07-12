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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<%@ include file="/WEB-INF/jspf/taglib.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title><spring:message code="title.error" /> <system:properties key="servlet.container.id" /></title>
<%@ include file="/WEB-INF/jspf/script.jspf"%>
<%@ include file="/WEB-INF/jspf/style.jspf"%>
<%@ include file="/WEB-INF/jspf/example/favicon.jspf"%>
</head>
<body class="composite">
	<%@ include file="/WEB-INF/jspf/example/header.jspf"%>
	<div id="breadcrumbs">
		<div class="xleft">
			<span id="publishDate">Last Published: </span> &nbsp;| <span id="projectVersion">Version: </span>
		</div>
		<div class="xright"></div>
		<div class="clear">
			<hr />
		</div>
	</div>
	<div id="leftColumn">
		<div id="navcolumn"></div>
	</div>
	<div id="bodyColumn">
		<div id="contentBox">
			<div class="section">
				<h2>
					<spring:message code="heading.error.http.status.code.404" />
				</h2>

				<p>
					<spring:message code="errors.http.status.code.404" htmlEscape="false" />
				</p>
				<p>
					<system:properties key="servlet.container.id" />
				</p>
				<ul>
					<li><spring:message code="label.webmaster.phoneNumber" />: <spring:eval expression="@systemProperties.getProperty('webmaster.phoneNumber')" /></li>
					<li><spring:message code="label.webmaster.email" />: <a
						href="mailto:<spring:eval expression="@systemProperties.getProperty('webmaster.email')" />?Subject=[Error Report]&body=request id: ${requestId}, container id: <system:properties key="servlet.container.id" />"
						target="_top"> <spring:eval expression="@systemProperties.getProperty('webmaster.email')" />
					</a></li>
				</ul>

				<sec:authorize access="hasRole('ROLE_DEVELOPER')">
					<table class="bodyTable">
						<tr class="a">
							<th>attribute</th>
							<th>value</th>
						</tr>
						<tr class="b">
							<td>statusCode</td>
							<td>${pageContext.errorData.statusCode}</td>
						</tr>
						<tr class="a">
							<td>requestURI</td>
							<td>${pageContext.errorData.requestURI}</td>
						</tr>
						<tr class="b">
							<td>exception</td>
							<td>${pageContext.errorData.throwable}</td>
						</tr>
						<tr class="a">
							<td>message</td>
							<td>${pageContext.exception.message}</td>
						</tr>
						<tr class="b">
							<td>localizedMessage</td>
							<td>${pageContext.exception.localizedMessage}</td>
						</tr>
						<tr class="a">
							<td>cause</td>
							<td>${pageContext.exception.cause}</td>
						</tr>
						<tr class="b">
							<td>stackTrace</td>
							<td><c:forEach var="throwable" items="${pageContext.exception.stackTrace}">${throwable}<br />
								</c:forEach></td>
						</tr>
					</table>
				</sec:authorize>
			</div>
		</div>
	</div>
	<div class="clear">
		<hr />
	</div>
	<div id="footer">
		<div class="xright">
			<spring:eval expression="@systemProperties.getProperty('system.copyright')" />
		</div>
		<div class="clear">
			<hr />
		</div>
	</div>
	<%@ include file="/WEB-INF/jspf/dump.jspf"%>
</body>
</html>
<log:error category="jsp" message="status code: ${pageContext.errorData.statusCode}" />
<log:error category="jsp" message="request uri: ${pageContext.errorData.requestURI}" />
<log:error category="jsp" message="exception class: ${pageContext.errorData.throwable}" />
<log:error category="jsp" message="exception message: ${pageContext.exception.message}" />
<log:error category="jsp" message="cause: ${pageContext.errorData.throwable.cause}" />
<log:error category="jsp" message="stack trace:" />
<c:forEach var="stackTraceElement" items="${pageContext.exception.stackTrace}" varStatus="status">
	<log:error category="jsp" message="${status.index} ${stackTraceElement}" />
</c:forEach>