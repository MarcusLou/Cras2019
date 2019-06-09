<%-- 
    Document   : exibireventos
    Created on : 05/04/2019, 04:37:53
    Author     : Ronnie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- mapear boot por tags -->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script>
        <title>Eventos</title>
    </head>
    <body>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>    
                        <th>Nome do Evento</th>
                        <th>Nome do Coordenador</th>
                        <th>Endereço</th>
                        <th> Data de Início </th>
                        <th> Data de Término </th>
                        <th>Horário</th>
                        <th>Duração</th>
                        <th>Descrição</th>
                        <th>Status </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items= "${listaEvento}" var="atributo">
                        <tr>
                            <td> ${atributo.nomeEvento}</td>
                            <td> ${atributo.nomeCoordenador}</td>
                            <td> ${atributo.endereco}</td>
                            <td> ${atributo.dataInicio}</td>
                            <td> ${atributo.dataTermino}</td>
                            <td> ${atributo.horario}</td>
                            <td> ${atributo.duracao}</td>
                            <td> ${atributo.descricao}</td>
                            <td> ${atributo.status}</td>
                        </tr>
                    </c:forEach>
                            
                         
                </tbody>
            </table>
        </div>
    </body>
</html>
                            
