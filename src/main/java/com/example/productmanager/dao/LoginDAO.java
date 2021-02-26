package com.example.productmanager.dao;

import com.example.productmanager.dbutil.DBUtil;
import com.example.productmanager.pojo.LoginInfo;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;

public class LoginDAO {
        public static boolean isUserValid(LoginInfo userDetails){
            boolean validStatus = false;
            try {
                Connection connection = DBUtil.getConnection();
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM login_info WHERE  user_name = '"+userDetails.getUserName()+"' AND password = '"+userDetails.getPassword()+"'");
                while(rs.next()) {
                    validStatus = true;
                }
                DBUtil.closeConnection(connection);
            } catch (Exception e ) {
                e.printStackTrace();
            }
            return validStatus;
        }
}
