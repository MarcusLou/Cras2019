<%-- 
    Document   : exibirMembroFamilias
    Created on : 05/06/2019, 09:37:53
    Author     : Marcus
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <title>Membros da Família</title>
    </head>
    <body>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>    
                        <th>Nome</th>
                        <th>Função Familiar</th>
                        <th>Telefone</th>
                        <th>Celular</th>
                        <th>Nome do Pai</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items= "${buscaBeneficio}" var="atributo">
                        <tr>
                            <td> ${atributo.nome}</td>
                            <td> ${atributo.funcao_familiar}</td>
                            <td> ${atributo.telefone}</td>
                            <td> ${atributo.celular}</td>
                            <td> ${atributo.nome_pai}</td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
                            
