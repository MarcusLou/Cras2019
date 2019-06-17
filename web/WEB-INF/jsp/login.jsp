<%-- 
    Document   : login
    Created on : 09/06/2019, 14:31:35
    Author     : Ronnie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="resources/css/style.css"/>
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <script src="resources/js/bootstrap.js"></script>
        <title>Login</title>
        <style>
            
            a {
                color: #ffffff;
               
            }
        </style>
    </head>
    <body >
        <div id="fundo-externo">
            <div id="fundo">
                <img src="resources/img/login.jpg" alt=""/>
            </div>
            
            <div class="container"  > 
                <div class="col-md-5 cadastro branco alinhamentoLogin ">
                    <h1>Efetue seu login</h1>
                    <form  action="index" method="">
                        <div class="form-group"> 

                            Usuário
                            </br>
                            <input type="text" name="usuario" id="usuario" class="form-control corPlaceHolder " required="" placeholder="Digite o nome de Usuário">

                        </div>
                        <div class="form-group"> 

                            Senha
                            </br>
                            <input type="password" name="senha" id="senha" class=" form-control corPlaceHolder" required="" placeholder="Digite sua Senha">

                        </div>
                        <div class="form-group"> 

                            <input type="submit" id="submit" class="btn btn-primary" value="Acessar">
                            <td><a href=""><b>Esqueceu sua senha?</b></a></td> 
                        </div>
                        
                </form>
            </div>  
                
        </div>
        </body>
</html>
