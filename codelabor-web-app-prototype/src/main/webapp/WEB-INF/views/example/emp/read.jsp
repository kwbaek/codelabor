<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="/WEB-INF/views/example/error/defaultErrorPage.jsp"%>
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
<title><spring:message code="title.emp.read" /> <system:properties key="servlet.container.id" /></title>
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
					<spring:message code="heading.emp.read" />
				</h2>
				<hr />
				<!-- success message area -->
				<div class="successMessages">
					<c:forEach var="message" items="${messages}">
						<c:out value="${message}" />
					</c:forEach>
				</div>
				<table class="bodyTable">
					<tr class="b">
						<th><label for="empNo"><spring:message code="label.emp.empNo" /></label></th>
						<td><span id="empNo"><c:out value="${empDto.empNo}" /></span></td>
					</tr>
					<tr class="b">
						<th><label for="ename"><spring:message code="label.emp.ename" /></label></th>
						<td><span id="ename"><c:out value="${empDto.ename}" /></span></td>
					</tr>
					<!--
		<tr class="b">
			<th><label for="deptNo"><spring:message
						code="label.emp.deptNo" /></label></th>
			<td><span id="deptNo">${empDto.deptNo}</span></td>
		</tr>
		-->
					<tr class="b">
						<th><label for="deptName"><spring:message code="label.emp.deptName" /></label></th>
						<td><span id="deptName"><c:out value="${empDto.deptName}" /></span></td>
					</tr>
					<tr class="b">
						<th><label for="job"><spring:message code="label.emp.job" /></label></th>
						<td><span id="job"><c:out value="${empDto.job}" /></span></td>
					</tr>
					<tr class="b">
						<th><label for="hireDate"><spring:message code="label.emp.hireDate" /></label></th>
						<td><span id="hireDate"><fmt:formatDate value="${empDto.hireDate}" pattern="yyyy-MM-dd" /></span></td>
					</tr>
					<!--
		<tr class="b">
			<th><label for="mgr"><spring:message
						code="label.emp.mgr" /></label></th>
			<td><span id="mgr">${empDto.mgr}</span></td>
		</tr>
		-->
					<tr class="b">
						<th><label for="mgr"><spring:message code="label.emp.mgrName" /></label></th>
						<td><span id="mgr"><c:out value="${empDto.mgrName}" /></span></td>
					</tr>
					<tr class="b">
						<th><label for="comm"><spring:message code="label.emp.comm" /></label></th>
						<td><span id="comm"><fmt:formatNumber value="${empDto.comm}" pattern="#######.##" /></span></td>
					</tr>
					<tr class="b">
						<th><label for="sal"><spring:message code="label.emp.sal" /></label></th>
						<td><span id="sal"><fmt:formatNumber value="${empDto.sal}" pattern="#######.##" /></span></td>
					</tr>
				</table>
				<hr />
				<a href="${pageContext.request.contextPath}/example/emp/listEmp"><spring:message code="button.list" /></a> <a
					href="${pageContext.request.contextPath}/example/emp/updateEmp?empNo=<c:out value="${empDto.empNo}" />"><spring:message code="button.update" /></a>
			</div>
		</div>
	</div>
	<div class="clear">
		<hr />
	</div>
	<%@ include file="/WEB-INF/jspf/example/footer.jspf"%>
</body>
</html>