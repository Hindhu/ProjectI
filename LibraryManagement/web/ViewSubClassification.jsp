<%-- 
    Document   : ViewSubClassification
    Created on : 26/08/2018, 12:15:03 PM
    Author     : Jerron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <title>View Sub Classification</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light mb-5">
            <a class="navbar-brand" href="Home.jsp"><i class="fas fa-book-reader"></i></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
           
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Books
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="AddBooks.jsp">Add Books</a>
                            <a class="dropdown-item" href="ViewBook.jsp">Update Books</a>
                            <a class="dropdown-item" href="#">Find Books</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Classification
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="ViewMainClassification.jsp">Main Classification</a>
                            <a class="dropdown-item" href="ViewSubClassification.jsp">Sub Classification</a>                                            
                        </div>
                    </li>                    
                </ul>
                <form class="form-inline my-2 my-lg-0" action="SearchBookController" method="get">
                    <input class="form-control mr-sm-2" name="sid" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0"  name="search" type="submit">Search</button>
                    <button class="btn btn-outline-success my-2 my-sm-0" name="view" type="submit">View</button>
                     
                </form>
            </div>
        </nav>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Sub Id</th>
                        <th scope="col">Sub Classification</th>
                        <th scope="col">Main Id</th>
                        <th colspan="4"> Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${bookList}" var="bookList">
                    <tr>
                        
                            <td>${bookList.getBookId()}</td>
                             <td>${bookList.getTitle()}</td>
                              <td>${bookList.getAuthor()}</td>
                               <td>${bookList.getMainClassification()}</td>
                                <td>${bookList.getSubClassification()}</td>
                                 <td>${bookList.getPublishedYear()}</td>
                                 <td>${bookList.getLastPrinted()}</td>
                                  <td>${bookList.getISBNNumber()}</td>
                                   <td>${bookList.getNumberOfPages()}</td>
                                   <td>
                                       <button type ="button" class="btn btn-primary" name ="edit" id ="edit">Edit</button></td><td>
<a href="DeleteBookController?delete=${bookList.getBookId()}"><button type="button" class="btn btn-danger" name ="delete" value="${bookList.getBookId()}" onclick="return confirm('Do you want to delete permenently${bookList.getBookId()}?');">Delete</button></a>
                                   </td>
                        
                    </tr>
                    </c:forEach>
                    
                </tbody>
            </table>
        </div>
    </body>
</html>