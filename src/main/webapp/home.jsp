
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Home</title>
</head>
<body>
<%@ include file="header.jsp" %>

<%
    String userName = (String)session.getAttribute("userName");
%>

<div align="center">
    <h2>Product Management System</h2>
    <label>Welcome <%= userName %></label>
</div>

</body>
</html>
