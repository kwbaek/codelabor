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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<%@ include file="/WEB-INF/jspf/taglib.jspf"%>
<!DOCTYPE html>
<html>
<head>
<title><spring:message code="title.buildInfo" /> <system:properties key="servlet.container.id" /></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex, nofollow" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<style type="text/css">
</style>
<%@ include file="/WEB-INF/jspf/script.jspf"%>
<%@ include file="/WEB-INF/jspf/style.jspf"%>
<%@ include file="/WEB-INF/jspf/example/favicon.jspf"%>
</head>
<body>
	<h1>
		<spring:message code="heading.buildInfo" />
	</h1>
	<table>
		<tr>
			<th>attribute</th>
			<th>value</th>
		</tr>
		<tr>
			<td><spring:message code="label.build.scmBranch" /></td>
			<td><spring:eval
					expression="@systemProperties.getProperty('build.scmBranch')" /></td>
		</tr>
		<tr>
			<td><spring:message code="label.build.buildNumber" /></td>
			<td><spring:eval
					expression="@systemProperties.getProperty('build.buildNumber')" /></td>
		</tr>
		<tr>
			<td><spring:message code="label.build.timestamp" /></td>
			<td><spring:eval
					expression="@systemProperties.getProperty('build.timestamp')" /></td>
		</tr>

	</table>

	<sec:authorize access="hasRole('ROLE_DEVELOPER')">
	</sec:authorize>
</body>
</html>