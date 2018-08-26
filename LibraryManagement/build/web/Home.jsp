<%-- 
    Document   : Home
    Created on : 11/08/2018, 3:11:07 PM
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
        
        
        <title>Home</title>
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
                        <div class="btn-group">
                            <a class="nav-link" href="#">Books</a>
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            
                        </a>
                        
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="AddBooks.jsp">Add Books</a>
                            <a class="dropdown-item" href="ViewBook.jsp">Update Books</a>
                            <a class="dropdown-item" href="#">Find Books</a>
                        </div>
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

        <div class="container">
            <div class="card-deck">
                <div class="card text-center">
                    <a href="ViewBook.jsp"><img class="card-img-top" src="Contents/img/Books.png" alt="Card image cap"></a>
                    <div class="card-body">
                        <h5 class="card-title">Books</h5>

                    </div>
                </div>
                <div class="card text-center">
                    <a href="#"><img class="card-img-top" src="Contents/img/Classification.png" alt="Card image cap"></a>
                    <div class="card-body">
                        <h5 class="card-title">Classification</h5>

                    </div>
                </div>
                <div class="card text-center">
                    <img class="card-img-top" src="Contents/img/Search.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Search</h5>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
