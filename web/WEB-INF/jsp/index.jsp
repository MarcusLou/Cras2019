<%-- 
    Document   : index
    Created on : 03/04/2019, 02:20:37
    Author     : Ronnie
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- mapear boot por tags -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
  
  <title>Bem vindo ao Cras</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-info">
           
            <div class="container"> 

                <a class="navbar-brand" href="#">CRAS</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="boasvindas"  target="principal">Home </a>
                        </li>
                        
                        <li class="nav-item">                        
                            <a class="nav-link" href="renderizarBuscarFamilia" id="navbarDropdownMenuLink" target="principal">
                                Família
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Agenda
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="renderizarBuscarEvento" target="principal">Eventos</a>
                                <a class="dropdown-item" href="renderizarExibirEvento" target="principal">Exibir</a>
                                
                            </div>
                        </li>   
                    </ul>
                    <ul class="navbar-nav navbar-right">
                        <li class="nav-item"><a class="nav-link" href="renderizarLogin"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li class="nav-item"><a class="nav-link" href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                    
                </div>
            </div>

        </nav>
       <iframe name="principal"  class="embed-responsive mr-auto embed-responsive-item"  src=" "></iframe>
       
        
 
        
        
        
        
    </body>
</html>
