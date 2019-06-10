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
        <link href="<c:url value='../resources/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='../resources/css/principal.css' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/maskMoney.js' />"></script>
        <title>Edição do Benefício</title>
</head>
<body>
    <div class="container"> 
        <div class="col-md-6 cadastro">
 	<h1>Edição do Benefício</h1>
            <form:form method="POST" modelAttribute="beneficio"  class="form-horizontal" action="/Cras/editarBeneficio">
                <div class="form-group ">
                    <form:hidden path="id"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    <form:hidden path="status"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    <form:hidden path="cod_cras"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    <form:hidden path="familiaID"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    <form:hidden path="idFuncionario"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    Nome do Benefício
                    </br>
                    <form:input type="text" path="nome" id="nome" class="form-control" required=""/>
                        <div class="has-error">
                            <form:errors path="nome" class="help-inline"/>
                        </div>
                </div>
                <div class="form-group ">
                    Número da Guia
                    </br>
                    <form:input type="number" path="numero_guia" id="numero_guia" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="numero_guia" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Valor
                    </br>
                    <form:input type="text" path="valor" id="valor" class="form-control valor" required="" data-thousands="." data-decimal="," data-prefix="R$ " />
                    <div class="has-error">
                        <form:errors path="valor" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Data de Início
                    </br>
                    <form:input type="date" path="data_inicio" id="data_inicio" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="data_inicio" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Data de Renovação
                    </br>
                    <form:input type="date" path="data_renovacao" id="data_renovacao" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="data_renovacao" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Justificativa
                    </br>
                    <form:input type="text" path="justificativa" id="justificativa" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="justificativa" class="help-inline"/>
                    </div>
                </div>
                <div class="form-actions floatRight">
                    <input type="submit"  value="Editar" class="btn btn-primary">
                        <input type="button" value="Cancelar" class="btn btn-danger" onClick="history.go(-1)"> 
                </div>
            </form:form>
	</div>
    </div>
        <script type="text/javascript">
            $(function(){
                $("#valor").maskMoney();
            });
        </script>
</body>
</html>