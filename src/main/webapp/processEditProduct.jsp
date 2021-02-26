<%@ page import="com.example.productmanager.pojo.Product" %>
<%@ page import="com.example.productmanager.dao.ProductManagementDAO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String productId = request.getParameter("prodId");
    String productName = request.getParameter("prodName");
    String productCategory = request.getParameter("prodCategory");
    Integer productPrice = Integer.parseInt(request.getParameter("prodPrice"));

    Product product = new Product(productId,productName,productCategory,productPrice);

    int status = ProductManagementDAO.updateProduct(product);
    if(status == 1)
    {
        response.sendRedirect("viewProducts.jsp");
    }
    else
    {
        response.sendRedirect("error.jsp");
    }

%>
