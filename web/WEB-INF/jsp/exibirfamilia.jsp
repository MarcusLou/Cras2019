<%-- 
    Document   : exibirFamilias
    Created on : 05/06/2019, 09:37:53
    Author     : Marcus
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- mapear boot por tags -->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <title>Famílias</title>
    </head>
    <body>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>    
                        <th>Nome do Responsável</th>
                        <th>Endereço</th>
                        <th>Telefone</th>
                        <th>Situação Familiar</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items= "${buscaBeneficio}" var="atributo">
                        <tr>
                            <td> ${atributo.responsavel_familiar}</td>
                            <td> ${atributo.endereco}</td>
                            <td> ${atributo.telefone_fixo}</td>
                            <td> ${atributo.situacao_familiar}</td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
                            
