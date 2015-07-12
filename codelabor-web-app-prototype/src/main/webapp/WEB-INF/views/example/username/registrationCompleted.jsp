<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/taglib.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Registration Completed <system:properties key="servlet.container.id" /></title>
<%@ include file="/WEB-INF/jspf/script.jspf"%>
<%@ include file="/WEB-INF/jspf/style.jspf"%>
<%@ include file="/WEB-INF/jspf/example/favicon.jspf"%>
</head>
<body>
	<h2>Registration Completed</h2>
	<hr />
	
	<sec:authorize access="hasRole('ROLE_DEVELOPER')">
		<sec:authentication property="principal" var="principal" />
		<code>principal: ${principal}</code>
		<br />
		<sec:authorize access="isAuthenticated()">
			<code>Username: <sec:authentication property="principal.username" /></code>
		</sec:authorize>
	</sec:authorize>
</body>
</html>