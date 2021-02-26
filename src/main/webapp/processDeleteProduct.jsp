<%@ page import="com.example.productmanager.pojo.Product" %>
<%@ page import="com.example.productmanager.dao.ProductManagementDAO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String productId = request.getParameter("prodId");

    int status = ProductManagementDAO.deleteProduct(productId);
    if(status == 1)
    {
        response.sendRedirect("viewProducts.jsp");
    }
    else
    {
        response.sendRedirect("error.jsp");
    }

%>
