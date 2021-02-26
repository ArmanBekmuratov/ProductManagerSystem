<%@ page import="com.example.productmanager.pojo.Product" %>
<%@ page import="com.example.productmanager.dao.ProductManagementDAO" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Products</title>
</head>
<body>
<%@ include file="header.jsp" %>

<table align="center" class="productTable">
    <thead>
    <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Category</th>
        <th>Price</th>
        <th colspan="2">Actions</th>
    </tr>
    </thead>
    <%
        List<Product> productList = ProductManagementDAO.getAllProducts();
        for (Product p : productList) {
    %>
        <tr>
            <td><%=p.getProductId()%></td>
            <td><%=p.getName()%></td>
            <td><%=p.getCategory()%></td>
            <td><%= p.getPrice()%></td>
            <td><button class="actionBtn" onclick="location.href = 'editProduct.jsp?prodId=<%= p.getProductId()%>';">Edit</button></td>
            <td><button class="actionBtn" onclick="location.href = 'processDeleteProduct.jsp?prodId=<%= p.getProductId()%>';">Delete</button></td>
        </tr>

         <%
        }
         %>
</table>

</body>
</html>