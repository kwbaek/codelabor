<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/taglib.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- Registration Form -->
<title><spring:message code="title.example.validation.registration" /> <system:properties key="servlet.container.id" /></title>
<%@ include file="/WEB-INF/jspf/script.jspf"%>
<%@ include file="/WEB-INF/jspf/style.jspf"%>
<%@ include file="/WEB-INF/jspf/example/favicon.jspf"%>
</head>
<body>
	<!-- Registration Form -->
	<h2>
		<spring:message code="heading.example.validation.registration.form" />
	</h2>
	<hr />
	<form:form commandName="registrationFormDto">
		<form:errors path="*" cssClass="errorBox" />
		<table>
			<tr>
				<!-- Username -->
				<td><spring:message code="label.username" /></td>
				<td><form:input path="username" /></td>
				<td><form:errors path="username" /></td>
			</tr>
			<tr>
				<!-- Email -->
				<td><spring:message code="label.email" /></td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="<spring:message code="button.save" />" onclick="" /> <input type="reset"
					value="<spring:message code="button.reset" />" /></td>
			</tr>
		</table>
	</form:form>

	<sec:authorize access="hasRole('ROLE_DEVELOPER')">
		<sec:authentication property="principal" var="principal" />
		<code>principal: ${principal}</code>
		<br />
		<sec:authorize access="isAuthenticated()">
			<code>
				Username:
				<sec:authentication property="principal.username" />
			</code>
		</sec:authorize>
	</sec:authorize>
</body>
</html>