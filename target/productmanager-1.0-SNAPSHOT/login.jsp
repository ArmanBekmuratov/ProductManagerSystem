<%--
  Created by IntelliJ IDEA.
  User: abekm
  Date: 26.02.2021
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div align="center">
    <form action="processLogin.jsp" method="post">
        <table class="loginForm">
            <tr>
                <td><label for="userName">User Name</label></td>
                <td><input type="text" id="userName" name="userName" class="searchTextField"/></td>
            </tr>
            <tr>
                <td><label for="password">Password</label></td>
                <td><input type="password" id="password" name="password" class="searchTextField"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Login" class="actionBtn" />
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
