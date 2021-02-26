<%@ page import="com.example.productmanager.pojo.Product" %>
<%@ page import="com.example.productmanager.dao.ProductManagementDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Search Product</title>
    </head>
    <body>
        <%@ include file="header.jsp" %>
         <div align="center" style="padding-top:25px;">
            <form action="searchProduct.jsp">
                <label>Enter Product ID: </label>
                <input type="text" name="prodId" size="25" class="searchTextField"/>
                <button class="actionBtn">Search</button>
            </form>
        </div>
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
        String productId = request.getParameter("prodId");
        if(productId != null)
        {
            Product p = ProductManagementDAO.getProductById(productId);

            if(p != null)
            {
    %>
          <tr>
                <td><%=p.getProductId()%></td>
                <td><%=p.getName()%></td>
                <td><%=p.getCategory()%></td>
                <td><%= p.getPrice() %></td>
                <td><button class="actionBtn" onclick="location.href = 'editProduct.jsp?prodId=<%= p.getProductId()%>';">Edit</button></td>
                <td><button class="actionBtn" onclick="location.href = 'processDeleteProduct.jsp?prodId=<%= p.getProductId()%>';">Delete</button></td>
          </tr>
    <%		}
         else
    {
    %>
            <tr>
                <td colspan="5">No record to display</td>
            </tr>
    <%
        }
    }
         else
    {
    %>
    <tr>
        <td colspan="5">No record to display</td>
    </tr>
    <%
        }
    %>
        </table>

    </body>
</html>
