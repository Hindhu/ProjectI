/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.library.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jerron
 */
public class DatabaseConnection {

    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/libraryms?useSSL=false";

    static final String USER = "root";
    static final String PASS = "manager";

    static Connection conn;

    public static Connection getConnection() {

        System.out.println("Connecting to the database......");
        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            System.out.println("Connection Successful.");
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return conn;
    }

    public static void disconnect() {

        try {
            if (null != conn) {
                conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String args[]) throws ClassNotFoundException, SQLException{
    getConnection();
    }
}
