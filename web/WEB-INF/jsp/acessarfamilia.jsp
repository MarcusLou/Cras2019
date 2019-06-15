<%-- 
    Document   : buscafamilia
    Created on : 23/04/2019, 17:46:19
    Author     : Marcus
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="<c:url value='../resources/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='../resources/css/principal.css' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/jquery.mask.js' />"></script>
        <title>Família</title>
    </head>
    <body>
        <div class="container" > 
            <div class="col-md-6 cadastro">
                <h1 class="black">Família</h1>
                <div class="container form-group">
                    <table class="table">
                        <thead>
                            <tr>    
                                <th>Nome Resposável</th>
                                <th>Endereço</th>
                                <th>Telefone</th>
                                <th>Situação Familiar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items= "${buscaFamilia}" var="atributo">
                                <div class="col-md-3">
                                    ${atributo.responsavel_familiar}
                                </div>
                                <div class=" col-md-3">
                                    ${atributo.endereco}
                                </div>
                                <div class=" col-md-1">
                                    ${atributo.telefone}
                                </div>
                                <div class="col-md-1">
                                    ${atributo.situacao_familiar}
                                </div>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>