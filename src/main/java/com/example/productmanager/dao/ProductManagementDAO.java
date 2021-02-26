package com.example.productmanager.dao;

import com.example.productmanager.dbutil.DBUtil;
import com.example.productmanager.pojo.Product;

import javax.xml.transform.Result;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductManagementDAO  {

    public static List<Product> getAllProducts() {
        List<Product> productList = new ArrayList<>();
        try {
            Connection connection = DBUtil.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM product");
            while (rs.next()) {
                Product product = new Product(rs.getString("product_id"), rs.getString("product_name"), rs.getString("product_category"), rs.getInt("product_price"));
                productList.add(product);
            }
            DBUtil.closeConnection(connection);
        } catch (Exception exception) {
            exception.printStackTrace();
        }

        return productList;

    }

    public static int addProduct(Product product) {
        int status = 0;
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement statement = connection.prepareStatement("INSERT INTO product VALUES (?,?,?,?)");
            statement.setString(1,product.getProductId());
            statement.setString(2,product.getName());
            statement.setString(3,product.getCategory());
            statement.setInt(4,product.getPrice());
            status = statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public static Product getProductById(String productId) {
        Product product = null;
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM product WHERE product_id = ?");
            statement.setString(1,productId);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                product = new Product(rs.getString("product_id"),
                                      rs.getString("product_name"),
                                      rs.getString("product_category"),
                                      rs.getInt("product_price"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }

    public static int updateProduct(Product product){
        int status = 0;

        try
        {
         Connection connection = DBUtil.getConnection();
         PreparedStatement statement = connection.prepareStatement("UPDATE product SET product_name=?, product_category=?, product_price =? WHERE  product_id =?");
         statement.setString(1, product.getName());
         statement.setString(2, product.getCategory());
         statement.setInt(3, product.getPrice());
         statement.setString(4,product.getProductId());
         status = statement.executeUpdate();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public static int deleteProduct(String productId) {
        int status = 0;

        try
        {
            Connection connection = DBUtil.getConnection();
            PreparedStatement statement = connection.prepareStatement("DELETE FROM product WHERE product_id = ?");
            statement.setString(1,productId);
            status = statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
