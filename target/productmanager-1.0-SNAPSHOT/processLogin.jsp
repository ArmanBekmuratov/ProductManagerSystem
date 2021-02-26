<%--
  Created by IntelliJ IDEA.
  User: abekm
  Date: 26.02.2021
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.productmanager.dao.LoginDAO" %>
<%@ page import="com.example.productmanager.pojo.LoginInfo" %>

<%

    String userName = request.getParameter("userName");
    String password = request.getParameter("password");

    if(LoginDAO.isUserValid(new LoginInfo(userName,password)))
    {
        session.setAttribute("userName",userName);
        session.setMaxInactiveInterval(200);
        response.sendRedirect("home.jsp");
    }
    else
    {
        response.sendRedirect("loginFailed.jsp");
    }
%>
