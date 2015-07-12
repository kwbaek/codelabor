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
<title>Request Info <system:properties key="servlet.container.id" /></title>
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
				<h2>Request Info</h2>
				<hr />
				<table class="bodyTable">
					<tr class="b">
						<th>pageContext.request</th>
						<td><c:out value="${pageContext.request}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.authType</th>
						<td><c:out value="${pageContext.request.authType}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.characterEncoding</th>
						<td><c:out value="${pageContext.request.characterEncoding}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.contentLength</th>
						<td><c:out value="${pageContext.request.contentLength}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.contentType</th>
						<td><c:out value="${pageContext.request.contentType}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.contextPath</th>
						<td><c:out value="${pageContext.request.contextPath}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.localAddr</th>
						<td><c:out value="${pageContext.request.localAddr}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.localName</th>
						<td><c:out value="${pageContext.request.localName}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.localPort</th>
						<td><c:out value="${pageContext.request.localPort}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.method</th>
						<td><c:out value="${pageContext.request.method}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.pathInfo</th>
						<td><c:out value="${pageContext.request.pathInfo}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.pathTranslated</th>
						<td><c:out value="${pageContext.request.pathTranslated}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.protocol</th>
						<td><c:out value="${pageContext.request.protocol}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.queryString</th>
						<td><c:out value="${pageContext.request.queryString}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.remoteAddr</th>
						<td><c:out value="${pageContext.request.remoteAddr}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.remoteHost</th>
						<td><c:out value="${pageContext.request.remoteHost}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.remotePort</th>
						<td><c:out value="${pageContext.request.remotePort}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.remoteUser</th>
						<td><c:out value="${pageContext.request.remoteUser}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.requestedSessionId</th>
						<td><c:out value="${pageContext.request.requestedSessionId}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.requestURI</th>
						<td><c:out value="${pageContext.request.requestURI}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.remoteAddr</th>
						<td><c:out value="${pageContext.request.reader}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.reader</th>
						<td><c:out value="${pageContext.request.remoteAddr}" /></td>
					</tr>
					<tr class="b">
						<th>pageContext.request.requestURL</th>
						<td><c:out value="${pageContext.request.requestURL}" /></td>
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