<%-- 
    Document   : EditarBeneficio
    Created on : 05/06/2019, 17:46:19
    Author     : Marcus
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="<c:url value='../resources/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='../resources/css/principal.css' />" rel="stylesheet"></link>
        <link href="<c:url value='https://fonts.googleapis.com/icon?family=Material+Icons' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/maskMoney.js' />"></script>
        <title>Edição do Benefício</title>
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
                    <h1 class="black text-center">Edição do Benefício</h1>
                </div>
                <div class="col-2">
                    <h1 class="black">&nbsp;</h1>
                </div>
            </div>
            </br>
            <form:form method="POST" modelAttribute="beneficio"  class="form-horizontal" action="/Cras/editarBeneficio">
                <form:hidden path="id"  class="form-control input-sm"/>
                <form:hidden path="status"  class="form-control input-sm"/>
                <form:hidden path="familiaID"  class="form-control input-sm"/>
                <form:hidden path="idFuncionario"  class="form-control input-sm"/>
                <div class="row form-group">    
                    <div class="col-8">Nome do Benefício</div>
                    <div class="col">Número da Guia</div>
                </div>
                <div class="row form-group">    
                    <div class="col-8">
                        <form:input type="text" path="nome" id="nome" class="form-control" required="true"/>
                        <div class="has-error">
                            <form:errors path="nome" class="help-inline"/>
                        </div>
                    </div>
                    <div class="col">
                        <form:input type="number" path="numero_guia" id="numero_guia" class="form-control" required="true"/>
                        <div class="has-error">
                            <form:errors path="numero_guia" class="help-inline"/>
                        </div>
                    </div>
                </div>        
                <div class="row form-group">    
                    <div class="col">Valor</div>
                    <div class="col">Data de Início</div>
                    <div class="col">Data de Renovação</div>
                </div>
                <div class="row form-group">    
                    <div class="col">
                        <form:input type="text" path="valor" id="valor" class="form-control valor" required="true" data-thousands="." data-decimal="," data-prefix="R$ " />
                        <div class="has-error">
                            <form:errors path="valor" class="help-inline"/>
                        </div>
                    </div>
                    <div class="col">
                        <form:input type="date" path="data_inicio" id="data_inicio" class="form-control" required="true"/>
                        <div class="has-error">
                            <form:errors path="data_inicio" class="help-inline"/>
                        </div>
                    </div>
                    <div class="col">
                        <form:input type="date" path="data_renovacao" id="data_renovacao" class="form-control" required="true"/>
                        <div class="has-error">
                            <form:errors path="data_renovacao" class="help-inline"/>
                        </div>
                    </div>
                </div>
                <div class="row form-group">    
                    <div class="col">Justificativa</div>
                </div>
                <div class="row form-group">    
                    <div class="col">
                        <form:textarea rows="2" path="justificativa" id="justificativa" class="form-control" required="true"/>
                        <div class="has-error">
                            <form:errors path="justificativa" class="help-inline"/>
                        </div>
                    </div>
                </div>    
                <div class="row form-group">    
                    <div class="col">
                        <div class="form-actions floatRight">
                            <div  id="colaps" class="collapse"> 
                                <input type="button" value="Cancelar" class="btn btn-primary" onClick="history.go(-1)"> 
                                <button type="submit" class="btn btn-danger">Click aqui para confirmar a Edição!</button>
                                </br>
                            </div>
                            <div class="form-actions floatRight">
                                </br>
                                <input type="button"  value="Editar" data-toggle="collapse" data-target="#colaps"  class="btn btn-warning">
                            </div>
                        </div>
                    </div>
                </div> 
            </form:form>
        </div>
        <script type="text/javascript">
            $(function(){
                $("#valor").maskMoney();
            });
        </script>
    </body>
</html>