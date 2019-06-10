<%-- 
    Document   : cadastrarevento
    Created on : 03/04/2019, 02:46:18
    Author     : Ronnie
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script>
        <title>Cadastro de Eventos</title>
    </head>
    <body>
        <div class="container"> 
            <div class="col-md-6 cadastro">
            <h1>Cadastre seu evento aqui!</h1>
            <div> 
                <form action="cadastrarEvento" method="POST">
                    <div class="form-group"> 
                        
                        Nome do Evento
                        </br>
                        <input type="text" name="nomeEvento" id="nomeEvento" class="form-control" required="">

                    </div>
                    <div class="form-group"> 

                        Nome do Coordenador
                        </br>

                        <input type="text" name="nomeCoordenador" id="nomeCoordenador" class="form-control" required="">

                    </div>

                     <div class="form-group"> 

                        Endereco
                        </br>
                        <input type="text" name="endereco" id="endereco" class="form-control" required="" >

                    </div>
                    
                    <div class="form-group"> 

                        Data de Início
                        </br>
                        <input type="date" name="dataInicio" id="dataInicio" class="form-control" required="" >

                    </div>
                    
                     <div class="form-group"> 

                        Data de Término 
                        </br>
                        <input type="date" name="dataTermino" id="dataTermino" class="form-control" required="" >

                    </div>

                    <div class="form-group"> 

                        Horário
                        </br>
                        <input type="time" name="horario" id="horario" class="form-control"  placeholder="00:00" required="">

                    </div>

                     <div class="form-group"> 
                        Duração
                        </br>
                        <input type="time" name="duracao" id="duracao" class="form-control"  placeholder="00:00">

                    </div>

                    <div class="form-group"> 

                        Descrição
                        </br>
                        <input type="text" name="descricao" id="descricao" class="form-control">

                    </div>

                    <div class="form-group"> 

                        <input type="submit" id="submit" class="btn btn-primary" value="Cadastrar">

                    </div>

                </form>
            </div>
        </div>
    </body>
</html>



