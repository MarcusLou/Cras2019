<%-- 
    Document   : buscabeneficio
    Created on : 23/04/2019, 17:46:19
    Author     : Marcus
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <link href="<c:url value='../resources/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='../resources/css/principal.css' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/jquery.mask.js' />"></script>
        <title>Busca de Beneficios</title>
    </head>
    <body>
        <div class="container" > 
                <div class="col-md-6 cadastro">
                    <h1> Buscar Benefício</h1>
                    <form action="buscarBeneficio" method="POST">
                        <div class="form-group"> 
                            
                            Nome do Benefício
                            </br>
                            <table width="700">
                                <tr> 
                                    <td colspan="90"><input type="text" name="nome" id="nome" class="form-control" required=""> </td>
                                    <td colspan="10"> <input type="submit" id="submit" class="btn btn-primary" value="Buscar"> </td>
                                </tr>
                            </table>
                            
                           
                        </div>
                        
                        <div class="form-group"> 

                            
                            <a class="btn btn-success" href="renderizarCadastrarBeneficio">Cadastrar Benefício!</a>
                        </div>
                        
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
                                            <td> <div class="form-group"> 
                                                    
                                            <td><a href="renderizarEditarBeneficio/${atributo.id}">Editar</a></td>  
                                            <td><a href="removerBeneficio/${atributo.id}" >Remover</a></td> 
                                                </div></td>
                                        </tr>
                                    </c:forEach>


                                </tbody>
                            </table>
                        </div>

                    </form>
                </div>  
       </body>
</html>
