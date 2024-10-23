<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <title><%= pageTitle %></title>
	<%@ include file="views/css.jsp" %>
	<jsp:include page="<%= scriptPage %>" />
</head>

<body class="template-color-1">
<%@ include file="views/header.jsp" %>

    <div class="main-wrapper">
    	<jsp:include page="<%= contentPage %>" />
    </div>

<%@ include file="views/footer.jsp" %>
<%@ include file="views/js.jsp" %>
</body>
</html>