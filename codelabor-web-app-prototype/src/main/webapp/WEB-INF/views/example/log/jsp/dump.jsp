<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/taglib.jspf"%>
<html>
<head>
<%@ include file="/WEB-INF/jspf/script.jspf"%>
<%@ include file="/WEB-INF/jspf/style.jspf"%>
<%@ include file="/WEB-INF/jspf/example/favicon.jspf"%>
</head>
<body>
	<h2>Page</h2>
	<log:dump scope="page" />
	<h2>Request</h2>
	<log:dump scope="request" />
	<h2>Session</h2>
	<log:dump scope="session" />
	<h2>Application</h2>
	<log:dump scope="application" />
</body>
</html>