<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<html>
<head>
<title>Sample(Home)</title>

<spring:url value="/resources/js/jquery-3.3.1.js" var="jqueryJs" />
<script src="${jqueryJs}"></script>
<spring:url value="/resources/js/jquery-ui.js" var="jqueryUIJs" />
<script src="${jqueryUIJs}"></script>
<spring:url value="/resources/js/jquery.validate.js"
	var="jqueryValidationJs" />
<script src="${jqueryValidationJs}"></script>

<spring:url value="/resources/css/jquery-ui.css" var="jqueryUICss" />
<link href="${jqueryUICss}" rel="stylesheet" />
<spring:url value="/resources/css/jquery-ui.theme.css"
	var="jqueryUIThemeCss" />
<link href="${jqueryUIThemeCss}" rel="stylesheet" />

<spring:url value="/resources/css/sampleapp.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />

</head>
<body>
	<h1>Sample(Home)</h1>
    	<p><a href="forms">Forms</a></p>
        <p><a href="popups">Popups</a></p>
        <p><a href="tables">Tables</a></p>
</body>
</html>
