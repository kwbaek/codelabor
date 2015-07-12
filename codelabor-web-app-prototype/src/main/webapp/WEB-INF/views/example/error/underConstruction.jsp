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
					<spring:message code="heading.underConstruction" />
				</h2>

				<p>
					<spring:message code="errors.underConstruction" htmlEscape="false" />
				</p>
				<p>
					<system:properties key="servlet.container.id" />
				</p>
				<ul>
					<li><spring:message code="label.webmaster.phoneNumber" />: <spring:eval expression="@systemProperties.getProperty('webmaster.phoneNumber')" /></li>
					<li><spring:message code="label.webmaster.email" />: <a href="mailto:<spring:eval expression="@systemProperties.getProperty('webmaster.email')" />"
						target="_top"> <spring:eval expression="@systemProperties.getProperty('webmaster.email')" />
					</a></li>
				</ul>
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
</body>
</html>