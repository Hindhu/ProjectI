<%-- 
    Document   : AddSubClassification
    Created on : 26/08/2018, 11:47:41 AM
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
        <title>Add Sub Classification</title>
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
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
        
        <div class="row">
            <div class="col col-md-6 offset-3">
                <form action="" method="">
                    <div class="form-group">
                    <lable for="txtBookId">Sub Id</lable>
                    <input type="text" id="txtSubId" name="txtSubId" class="form-control mb-3"/>
                    </div>
                    <div class="form-group">
                    <lable for="txtSubClassification">Sub Classification</lable>
                    <input type="text" id="txtSubClassification" name="txtSubClassification" class="form-control mb-3"/>
                    </div>
                    <div class="form-group">
                    <lable for="txtMainId">Main Id</lable>
                    <input type="text" id="txtMainId" name="txtMainId" class="form-control mb-3"/>
                    </div>
                    <tr>
                        <td><button type="Submit" class="btn">Submit</button></td>
                        <td><button type="Reset" class="btn">Reset</button></td>
                    </tr>
                </form>
            </div>
        </div>
    </body>
</html>
