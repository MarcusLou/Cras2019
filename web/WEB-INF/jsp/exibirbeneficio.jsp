<%-- 
    Document   : exibirBeneficios
    Created on : 05/06/2019, 09:37:53
    Author     : Marcus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- mapear boot por tags -->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <title>Benefícios</title>
    </head>
    <body>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>    
                        <th>Nome</th>
                        <th>Número da Guia</th>
                        <th>Valor</th>
                        <th>Data Início</th>
                        <th>Data Renovação</th>
                        <th>Justificativa</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items= "${buscaBeneficio}" var="atributo">
                        <tr>
                            <td> ${atributo.nome}</td>
                            <td> ${atributo.numero_guia}</td>
                            <td> ${atributo.valor}</td>
                            <td> ${atributo.data_inicio}</td>
                            <td> ${atributo.data_renovacao}</td>
                            <td> ${atributo.justificativa}</td>
                            <td> ${atributo.status}</td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
    <script>
        $(function() {
          $("#valor").maskMoney({prefix:'R$ ', allowNegative: true, thousands:'.', decimal:',', affixesStay: false});
        });
        //https://igorescobar.github.io/jQuery-Mask-Plugin/
    </script>
</html>
                            
