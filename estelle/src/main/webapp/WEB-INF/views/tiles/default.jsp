<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Estelle</title>
<script type='text/javascript'
	src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<link href="css/common.css?<%=new java.util.Date()%>" rel="stylesheet"
	type="text/css">
</head>
<body>
	<tiles:insertAttribute name="header"/>
	<div>
		<tiles:insertAttribute name="container"/>
	</div>
	<tiles:insertAttribute name="footer"/>
</body>
</html>