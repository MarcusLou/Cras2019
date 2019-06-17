<%-- 
    Document   : buscafamilia
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
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <link href="<c:url value='../resources/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='../resources/css/principal.css' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/jquery.mask.js' />"></script>
        <title>Busca de Fam�lias</title>
    </head>
    <body>
        <div class="container" >
            <div class="row">
                <div class="col-2">
                    <!--<button style="font-size:24px" class="btn btn-sm btn-light" onClick="history.go(-1)" title="Voltar a p�gina anterior!">
                        <i class="material-icons">undo</i>Voltar
                    </button>-->
                </div>
                <div class="col">
                    <h1 class="black text-center">Buscar Fam�lia</h1>
                </div>
                <div class="col-2">
                    <h1 class="black">&nbsp;</h1>
                </div>
            </div>
            </br>
            <form action="buscarFamilia" method="POST">
                <div class="form-group black"> 
                    Nome do Respons�vel pela Fam�lia
                    </br>
                    <table width="100%">
                        <tr class="row"> 
                            <td class="col-5"><input type="text" name="responsavel_familiar" id="responsavel_familiar" class="form-control" required="true"> </td>
                            <td class="col-1"><input type="submit" id="submit" class="btn btn-primary" value="Buscar"></td>
                            <td class="col-4">&nbsp;</td>
                            <td class="col-2"><input type="button" class="btn btn-success right" value="Cadastrar Fam�lia!" onclick="javascript:window.location.href='renderizarCadastrarFamilia'"></td>                       
                        </tr>
                    </table>
                </div>        
                <div class="container form-group">
                    <table class="table">
                        <thead>
                            <tr>    
                                <th>Nome Respos�vel</th>
                                <th>Endere�o</th>
                                <th>Telefone</th>
                                <th>Situa��o Familiar</th>
                                <th>Op��es</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items= "${buscaFamilia}" var="atributo">
                                <tr>
                                    <td> ${atributo.responsavel_familiar}</td>
                                    <td> ${atributo.endereco}</td>
                                    <td> ${atributo.telefone_fixo}</td>
                                    <td> ${atributo.situacao_familiar}</td>
                                    <td><button type="button" class="btn btn-warning" onclick="javascript:window.location.href='renderizarAcessarFamilia/${atributo.id}'" >Acessar</button></td>  
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </form>
        </div> 
    </body>
</html>