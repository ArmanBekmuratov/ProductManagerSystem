package com.example.productmanager.dao;

import com.example.productmanager.pojo.Product;

public class App {
    public static void main(String[] args) {
        Product product = new Product("p006","ket"," wq1",124);
        ProductManagementDAO.addProduct(product );
    }
}
