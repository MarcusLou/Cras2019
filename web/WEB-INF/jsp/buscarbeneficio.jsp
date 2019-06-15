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
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/jquery.mask.js' />"></script>
        <title>Busca de Beneficios</title>
    </head>
    <body>
        <div class="container" > 
                <div class="col-md-6 cadastro">
                    <h1 class="black"> Buscar Benefício</h1>
                    <form action="buscarBeneficio" method="POST">
                        <div class="form-group black"> 
                            Nome do Benefício
                            </br>
                            <table width="700">
                                <tr> 
                                    <td colspan="90"><input type="text" name="nome" id="nome" class="form-control" required="true"> </td>
                                    <td colspan="10"> <input type="submit" id="submit" class="btn btn-primary" value="Buscar"> </td>
                                </tr>
                            </table>
                        </div>
                        <div class="form-group">
                            <a class="btn btn-success" href="renderizarCadastrarBeneficio">Cadastrar Benefício!</a>
                        </div>
                        <div class="container form-group">
                            <table class="table">
                                <thead>
                                    <tr>    
                                        <th>Nome</th>
                                        <th>Número da Guia</th>
                                        <th>Valor</th>
                                        <th>Data Início</th>
                                        <th>Data Renovação</th>
                                        <th>Justificativa</th>
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
            <div class="modal fade" id="confirm" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">X</span></button>
                        <!-- <h4 class="modal-title">Titulo Do Modal</h4>-->
                        </div>
                        <div class="modal-body">
                              <h1>Tem certeza que quer <b>REMOVER</b> o Registro?!</h1>
                        </div>
                        <div class="modal-footer">${atributo.id}
                            <a href="removerBeneficio?${atributo.id}" class="btn btn-primary">Excluir</a>
                            <button type="button" class="btn btn-warning " data-dismiss="modal" onclick="cancelar()" >Cancelar</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal"   onclick="window.location.href='removerBeneficio/1' ">Remover</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>