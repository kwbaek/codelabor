<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="/WEB-INF/views/example/error/defaultErrorPage.jsp"%>
<%@ page import="org.codelabor.system.web.taglib.PaginationConstants, java.util.regex.Pattern, java.util.regex.Matcher"%>
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
<title><spring:message code="title.emp.list" /> <system:properties key="servlet.container.id" /></title>
<%@ include file="/WEB-INF/jspf/script.jspf"%>
<%@ include file="/WEB-INF/jspf/style.jspf"%>
<%@ include file="/WEB-INF/jspf/example/favicon.jspf"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/example/emp/emp.js"></script>
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
					<spring:message code="heading.emp.list" />
				</h2>

				<!-- failure message area -->
				<div class="failureMessages">
					<ul>
						<c:forEach var="message" items="${failureMessages}">
							<li><c:out value="${message}" /></li>
						</c:forEach>
					</ul>
				</div>

				<!-- success message area -->
				<div class="successMessages">
					<ul>
						<c:forEach var="message" items="${successMessages}">
							<li><c:out value="${message}" /></li>
						</c:forEach>
					</ul>
				</div>

				<!-- search condition area -->
				<c:url var="listEmpUrl" value="/example/emp/listEmp" />
				<form:form action="${listEmpUrl}" commandName="empSearchConditionDto" method="get">
					<fieldset>
						<legend>
							<spring:message code="label.searchCondition" />
						</legend>
						<table class="bodyTable">
							<tr class="b">
								<th><spring:message code="label.emp.job" /></th>
								<td><form:input path="job" /> <form:errors path="job" /></td>
								<th><spring:message code="label.emp.sal" /></th>
								<td><spring:message code="label.from" /> <form:input path="salFrom" /> ~ <spring:message code="label.to" /> <form:input path="salTo" /> <input
									type="reset" value="<spring:message code="button.reset" />" /> <input type="submit" value="<spring:message code="button.search" />" /> <form:errors
										path="salFrom" /> <form:errors path="salTo" /></td>
							</tr>
						</table>
					</fieldset>
				</form:form>

				<!-- import / export area -->
				<c:url var="importEmpListUrl" value="/example/emp/importEmpList2" />
				<form action="${importEmpListUrl}" method="post" enctype="multipart/form-data">
					<fieldset>
						<legend>
							<spring:message code="label.importExport" />
						</legend>
						<table class="bodyTable">
							<tr class="b">
								<th><spring:message code="label.excelFile" /></th>
								<td><input type="file" name="file" /> <input type="submit" value="<spring:message code="button.import" />"
									onclick="importFileWithSearchCondition()" />
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"></td>
								<td><c:choose>
										<c:when test="${not empty pageContext.request.queryString}">
											<a href="${pageContext.request.contextPath}/example/emp/exportEmpListOnCurrentPage?<c:out value="${pageContext.request.queryString}" />"> <spring:message
													code="button.export.current.page" />
											</a>
										</c:when>
										<c:otherwise>
											<a href="${pageContext.request.contextPath}/example/emp/exportEmpListOnCurrentPage"> <spring:message code="button.export.current.page" />
											</a>
										</c:otherwise>
									</c:choose> &nbsp; <%
 	String queryString = request.getQueryString();
 	String replacedQueryString = null;
 	if (queryString != null) {
 		StringBuilder sb = new StringBuilder();
 		sb.append(PaginationConstants.PAGE_NO_PARAM_NAME).append("=[0-9]*&");
 		sb.append(PaginationConstants.MAX_ROW_PER_PAGE_PARAM_NAME).append("=[0-9]*&?");
 		Pattern pattern = Pattern.compile(sb.toString());
 		Matcher matcher = pattern.matcher(queryString);
 		replacedQueryString = matcher.replaceAll("");
 	}
 	pageContext.setAttribute("replacedQueryString", replacedQueryString);
 %> <c:choose>
										<c:when test="${not empty replacedQueryString}">
											<a href="${pageContext.request.contextPath}/example/emp/exportEmpList?<c:out value="${replacedQueryString}" />"> <spring:message
													code="button.export.all.page" />
											</a>
										</c:when>
										<c:otherwise>
											<a href="${pageContext.request.contextPath}/example/emp/exportEmpList"> <spring:message code="button.export.all.page" />
											</a>
										</c:otherwise>
									</c:choose></td>
							</tr>
						</table>
					</fieldset>
				</form>

				<!-- list area -->
				<c:url var="deleteEmpListUrl" value="/example/emp/deleteEmpList" />
				<form:form action="${deleteEmpListUrl}" commandName="integerIdListDto">

					<!-- failure messages area -->
					<div class="failureMessages">
						<codelaborForm:errors path="*" />
					</div>

					<table class="bodyTable">
						<tr class="a">
							<th><spring:message code="label.check" /></th>
							<th><spring:message code="label.emp.empNo" /></th>
							<th><spring:message code="label.emp.ename" /></th>
							<th><spring:message code="label.emp.deptName" /></th>
							<th><spring:message code="label.emp.job" /></th>
							<th><spring:message code="label.emp.hireDate" /></th>
							<th><spring:message code="label.emp.mgrName" /></th>
							<th><spring:message code="label.emp.comm" /></th>
							<th><spring:message code="label.emp.sal" /></th>
						</tr>
						<c:forEach var="empDto" items="${empDtoList}">
							<tr class="b">

								<td><form:checkbox path="id" value="${empDto.empNo}" /></td>
								<td><a href="${pageContext.request.contextPath}/example/emp/readEmp?empNo=${empDto.empNo}"> <c:out value="${empDto.empNo}" />
								</a></td>
								<td><a href="${pageContext.request.contextPath}/example/emp/readEmp?empNo=${empDto.empNo}"> <c:out value="${empDto.ename}" />
								</a></td>
								<td><c:out value="${empDto.deptName}" /></td>
								<td><c:out value="${empDto.job}" /></td>
								<td><fmt:formatDate value="${empDto.hireDate}" pattern="yyyy-MM-dd" /></td>
								<td><c:out value="${empDto.mgrName}" /></td>
								<td><c:out value="${empDto.comm}" /></td>
								<td><c:out value="${empDto.sal}" /></td>
							</tr>
						</c:forEach>
					</table>
					<hr />
					<a href="${pageContext.request.contextPath}/example/emp/createEmp"><spring:message code="button.create" /></a>
					<input type="submit" value="<spring:message code="button.delete" />" onclick="deleteBySearchCondition()" />
				</form:form>

				<!--  pagination -->
				<pg:pagination cssClass="pageArea" numberOfRow="${numberOfRow}">
					<pg:firstIndex cssClass="btn_prev">
						<!--  
						<img src="/images/btn/btn_first.png" alt="<spring:message code="alternate.first" />" />
						-->
						|<
					</pg:firstIndex>
					<pg:previousIndex cssClass="btn_prev">
						<!--  
						<img src="/images/btn/btn_prev.png" alt="<spring:message code="alternate.prev" />" />
						-->
						<
					</pg:previousIndex>
					<pg:currentIndex />
					<pg:nextIndex cssClass="btn_next">
						<!--  
						<img src="/images/btn/btn_next.png" alt="<spring:message code="alternate.next" />" />
						-->
						>
					</pg:nextIndex>
					<pg:lastIndex cssClass="btn_next">
						<!--  
						<img src="/images/btn/btn_last.png" alt="<spring:message code="alternate.last" />" />
						-->
						>|
					</pg:lastIndex>
				</pg:pagination>
			</div>
		</div>
	</div>
	<div class="clear">
		<hr />
	</div>
	<%@ include file="/WEB-INF/jspf/example/footer.jspf"%>
</body>
</html>