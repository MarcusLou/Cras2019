<%-- 
    Document   : login
    Created on : 14/04/2019, 20:43:33
    Author     : Ronnie
--%>

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
        
    </head>
    <body >
        <div id="fundo-externo">
            <div id="fundo">
                <img src="resources/img/login.jpg" alt=""/>
            </div>
            
            <div class="container"  > 
                <div class="col-md-6 cadastro branco alinhamentoLogin ">
                    <h1>Efetue seu login</h1>
                    <form  action="index" method="">
                        <div class="form-group"> 

                            Usu�rio
                            </br>
                            <input type="text" name="usuario" id="usuario" class="form-control corPlaceHolder " required="" placeholder="Digite o nome de Usu�rio">

                        </div>
                        <div class="form-group"> 

                            Senha
                            </br>
                            <input type="password" name="senha" id="senha" class=" form-control corPlaceHolder" required="" placeholder="Digite sua Senha">

                        </div>
                        <div class="form-group"> 

                            <input type="submit" id="submit" class="btn btn-primary" value="Acessar">

                        </div>

                </form>
            </div>  
                
        </div>
        </body>
</html>
