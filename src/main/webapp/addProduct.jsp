
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.example.productmanager.dao.ProductManagementDAO" %>
<%@page import="com.example.productmanager.pojo.Product" %>
<%@page import="java.util.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Add Product</title>
</head>
<body>
<%@ include file="header.jsp" %>

<div align="center">
    <form action="processAddProduct.jsp" method="post">
        <table class="productTable">
            <thead>
            <tr>
                <th colspan="2">
                    Product Details
                </th>
            </tr>
            </thead>
            <tr>
                <td>Product ID</td>
                <td><input type="text" name="prodId" size="20"
                           class="productTextField" /></td>
            </tr>
            <tr>
                <td>Product Name</td>
                <td><input type="text" name="prodName" size="20"
                           class="productTextField" /></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><input type="text" name="prodCategory" size="20"
                           class="productTextField" /></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="prodPrice" size="20"
                           class="productTextField" /></td>
            </tr>
        </table>
        <button class="actionBtn" style="margin-top:10px">Add</button>
    </form>
</div>
</body>
</html>
