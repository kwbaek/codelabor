<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/taglib.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>System <system:properties key="servlet.container.id" /></title>
<%@ include file="/WEB-INF/jspf/script.jspf"%>
<%@ include file="/WEB-INF/jspf/style.jspf"%>
<%@ include file="/WEB-INF/jspf/example/favicon.jspf"%>
</head>
<body>
	<h1>System</h1>
	<hr />

	<h2>Logback Status</h2>
	<ul>
		<li><a href="${pageContext.request.contextPath}/logbackStatus">request
				info</a></li>
	</ul>
</body>
</html>