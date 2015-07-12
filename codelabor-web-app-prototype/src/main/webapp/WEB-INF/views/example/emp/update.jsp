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
<title><spring:message code="title.emp.update" /> <system:properties key="servlet.container.id" /></title>
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
					<spring:message code="heading.emp.update" />
				</h2>
				<hr />
				<form:form commandName="empDto">
					<!-- failure message area -->
					<div class="failureMessages">
						<form:errors path="*" />
					</div>
					<table class="bodyTable">
						<tr class="b">
						<tr class="b">
							<th><label for="empNo"><spring:message code="label.emp.empNo" /></label></th>
							<td><form:input path="empNo" type="hidden" /><c:out value="${empDto.empNo}" /><span><form:errors path="empNo" /></span></td>
						</tr>
						<tr class="b">
							<th><label for="ename"><spring:message code="label.emp.ename" /></label></th>
							<td><form:input path="ename" placeholder="length max 10" /><span><form:errors path="ename" /></span></td>
						</tr>
						<tr class="b">
							<th><label for="deptNo"><spring:message code="label.emp.deptNo" /></label></th>
							<td><form:select path="deptNo" items="${deptMap}" /> <span><form:errors path="deptNo" /></span></td>
						</tr>
						<tr class="b">
							<th><label for="job"><spring:message code="label.emp.job" /></label></th>
							<td><form:input path="job" placeholder="length max 9" /><span><form:errors path="job" /></span></td>
						</tr>
						<tr class="b">
							<th><label for="hireDate"><spring:message code="label.emp.hireDate" /></label></th>
							<td><form:input path="hireDate" placeholder="yyyy-MM-dd" /><span><form:errors path="hireDate" /></span></td>
						</tr>
						<tr class="b">
							<th><label for="mgr"><spring:message code="label.emp.mgrName" /></label></th>
							<td><form:select path="mgr" items="${mgrMap}" /> <span><form:errors path="mgr" /></span></td>
						</tr>
						<tr class="b">
							<th><label for="comm"><spring:message code="label.emp.comm" /></label></th>
							<td><form:input path="comm" placeholder="integer 7, fraction 2" /><span><form:errors path="comm" /></span></td>
						</tr>
						<tr class="b">
							<th><label for="sal"><spring:message code="label.emp.sal" /></label></th>
							<td><form:input path="sal" placeholder="integer 7, fraction 2" /><span><form:errors path="sal" /></span></td>
						</tr>
					</table>
					<hr />
					<a href="${pageContext.request.contextPath}/example/emp/listEmp"><spring:message code="button.list" /></a>
					<input type="submit" value="<spring:message code='button.save'/>" />
					<input type="reset" value="<spring:message code='button.reset'/>" />
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