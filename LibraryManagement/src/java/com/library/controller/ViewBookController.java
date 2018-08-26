
package com.library.controller;

import com.library.data.BookDao;
import com.library.model.Book;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jerron
 */
@WebServlet(name = "ViewBookController", urlPatterns = {"/ViewBookController"})
public class ViewBookController extends HttpServlet {

   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Book> bookList=new ArrayList<>();
            // Book book=new Book();
            BookDao bookdao=new BookDao();
            bookList=bookdao.viewBook();
            request.setAttribute("bookList",bookList);
            RequestDispatcher view=request.getRequestDispatcher("ViewBook.jsp");
            view.forward(request, response);
        
        
        
        
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
