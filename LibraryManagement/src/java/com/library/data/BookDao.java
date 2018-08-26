
package com.library.data;

import com.library.model.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jerron
 */
public class BookDao {
    Connection conn;
    PreparedStatement pstmt;
    private ArrayList<Book> result;
    
    public void addBook(Book book) throws SQLException{
        conn =  DatabaseConnection.getConnection();
        
        String sql = "INSERT INTO books (BookId,Title,Author,MainClassification,SubClassification,PublishedYear,LastPrinted,ISBNNumber,NumberOfPages) VALUES (?,?,?,?,?,?,?,?,?)";
       // String bookid=book.getBookId();
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,book.getBookId());
        pstmt.setString(2,book.getTitle());
        pstmt.setString(3,book.getAuthor());
        pstmt.setString(4,book.getMainClassification());
        pstmt.setString(5,book.getSubClassification());
        pstmt.setString(6,book.getPublishedYear());
        pstmt.setString(7,book.getLastPrinted());
        pstmt.setString(8,book.getISBNNumber());
        pstmt.setString(9,book.getNumberOfPages());
        pstmt.executeUpdate();
        DatabaseConnection.disconnect();
    }
    
    public ArrayList<Book> viewBook() {
        ArrayList<Book> result = new ArrayList<>();
           
        try {
            conn =  DatabaseConnection.getConnection();
            
            String sql = "select * from books";
            
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
                      
            while(rs.next()){
                Book book = new Book();
                book.setBookId(rs.getString("BookId"));
                book.setTitle(rs.getString("Title"));
                book.setAuthor(rs.getString("Author"));
                book.setMainClassification(rs.getString("MainClassification"));
                book.setSubClassification(rs.getString("SubClassification"));
                book.setPublishedYear(rs.getString("PublishedYear"));
                book.setLastPrinted(rs.getString("LastPrinted"));
                book.setISBNNumber(rs.getString("ISBNNumber"));
                book.setNumberOfPages(rs.getString("NumberOfPages"));
                result.add(book);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
           return result;
          }

   
    public ArrayList<Book> searchBook(String sid) {
           ArrayList<Book> result = new ArrayList<>();   
            conn =  DatabaseConnection.getConnection();
        
        try {
           
            String sql = "select * from books where BookId ='"+sid+"'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
                      
            while(rs.next()){
                Book book = new Book();
                book.setBookId(rs.getString("BookId"));
                book.setTitle(rs.getString("Title"));
                book.setAuthor(rs.getString("Author"));
                book.setMainClassification(rs.getString("MainClassification"));
                book.setSubClassification(rs.getString("SubClassification"));
                book.setPublishedYear(rs.getString("PublishedYear"));
                book.setLastPrinted(rs.getString("LastPrinted"));
                book.setISBNNumber(rs.getString("ISBNNumber"));
                book.setNumberOfPages(rs.getString("NumberOfPages"));
                result.add(book);
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
        }
         return result;
          }
      public void deleteBook(String BookId) {
          
          try {
               conn =  DatabaseConnection.getConnection();
            Statement st=conn.createStatement();
            String sql="DELETE FROM books WHERE BookId='"+BookId+"'";
            
            ResultSet rs = st.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
}
}        }
