/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.library.data;

import com.library.model.Book;
import com.library.model.MainClassification;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Jerron
 */
public class MainDao {
    Connection conn;
    PreparedStatement pstmt;
    private ArrayList<Book> result;
    
    public void addMain(MainClassification mClassification) throws SQLException{
        conn = DatabaseConnection.getConnection();
        
        String sql = "INSERT INTO mClassification (MainId, MainClassification) VALUES(?,?)";
        
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,mClassification.getMainId());
        pstmt.setString(2,mClassification.getMainClassification());
    }
}
