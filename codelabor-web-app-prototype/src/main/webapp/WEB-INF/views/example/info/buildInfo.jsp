<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
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
<html>
<head>
<title><spring:message code="title.buildInfo" /> <system:properties key="servlet.container.id" /></title>
<meta charset="UTF-8" />
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
					<spring:message code="heading.buildInfo" />
				</h2>
				<table class="bodyTable">
					<tr class="b">
						<th>attribute</th>
						<th>value</th>
					</tr>
					<tr class="b">
						<td><spring:message code="label.build.scmBranch" /></td>
						<td><spring:eval expression="@systemProperties.getProperty('build.scmBranch')" /></td>
					</tr>
					<tr class="b">
						<td><spring:message code="label.build.buildNumber" /></td>
						<td><spring:eval expression="@systemProperties.getProperty('build.buildNumber')" /></td>
					</tr>
					<tr class="b">
						<td><spring:message code="label.build.timestamp" /></td>
						<td><spring:eval expression="@systemProperties.getProperty('build.timestamp')" /></td>
					</tr>

				</table>
			</div>
		</div>
	</div>
	<div class="clear">
		<hr />
	</div>
	<%@ include file="/WEB-INF/jspf/example/footer.jspf"%>
</body>
</html>