<%-- 
    Document   : buscabeneficio
    Created on : 23/04/2019, 17:46:19
    Author     : Marcus
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <link href="<c:url value='../resources/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='../resources/css/principal.css' />" rel="stylesheet"></link>
        <link href="<c:url value='https://fonts.googleapis.com/icon?family=Material+Icons' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/jquery.mask.js' />"></script>
        <title>Busca de Beneficios</title>
    </head>
    <body>        
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <button style="font-size:24px" class="btn btn-sm btn-light" onClick="history.go(-1)" title="Voltar a página anterior!">
                        <i class="material-icons">undo</i>Voltar
                    </button>
                </div>
                <div class="col">
                    <h1 class="black text-center">Buscar Benefício</h1>
                </div>
                <div class="col-2">
                    <h1 class="black">&nbsp;</h1>
                </div>
            </div>
            </br>
            <form action="buscarBeneficio" method="POST">
                <div class="form-group black"> 
                    Nome do Benefício
                    </br>
                    <table width="100%">
                        <tr class="row"> 
                            <td class="col-5"><input type="text" name="nome" id="nome" class="form-control" required="true"> </td>
                            <td class="col-1"> <input type="submit" id="submit" class="btn btn-primary" value="Buscar"> </td>
                            <td class="col-4"> &nbsp; </td>
                            <td class="col-2"><input type="button" class="btn btn-success right" value="Cadastrar Benefício!" onclick="javascript:window.location.href='renderizarCadastrarBeneficio'"></td>                       
                        </tr>
                    </table>
                </div>
                <div class="container form-group">
                    <table class="table">
                        <thead>
                            <tr>    
                                <th>Nome</th>
                                <th>Nº Guia</th>
                                <th>Valor</th>
                                <th>Início</th>
                                <th>Renovação</th>
                                <th>Justificativa</th>
                                <th colspan="2" class="text-center">Opções</th>
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
                                    <td><button type="button" class="btn btn-warning" onclick="javascript:window.location.href='renderizarEditarBeneficio/${atributo.id}'" >Editar</button></td>  
                                    <td><button type="button" class="btn btn-danger" onclick="javascript:window.location.href='renderizarRemoverBeneficio/${atributo.id}'" >Remover</button></td> 
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>  
    </body>
</html>