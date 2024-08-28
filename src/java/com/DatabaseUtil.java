/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author mspee
 */
public class DatabaseUtil {
    public static Connection getConnection() throws SQLException {
        String url = "jdbc:postgresql://localhost:5432/LoginSystem";
        String username = "postgres";
        String password = "admin";
         try {
            Class.forName("org.postgresql.Driver"); // Ensure driver is loaded
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new SQLException("PostgreSQL JDBC Driver not found.");
        }
        return DriverManager.getConnection(url, username, password);
    
    }
}
