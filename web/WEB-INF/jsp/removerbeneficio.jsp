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
        <title>Remoção do Benefício</title>
</head>
<body>
    <div class="container"> 
        <div class="col-md-6 cadastro">
            <h1>Dados do Benefício a remover</h1>
            <form:form method="POST" modelAttribute="beneficio"  class="form-horizontal" action="/Cras/removerBeneficio">
                <div class="form-group ">
                    <form:hidden path="id"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    <form:hidden path="status"  class="form-control input-sm"/>
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
                    <form:input type="text" path="nome" id="nome" class="form-control"  readonly="true" />
                </div>
                <div class="form-group ">
                    Número da Guia
                    </br>
                    <form:input type="number" path="numero_guia" id="numero_guia" class="form-control"  readonly="true"/>

                </div>
                <div class="form-group ">
                    Valor
                    </br>
                    <form:input type="text" path="valor" id="valor" class="form-control valor"  data-thousands="." data-decimal="," data-prefix="R$ "  readonly="true"/>

                </div>
                <div class="form-group ">
                    Data de Início
                    </br>
                    <form:input type="date" path="data_inicio" id="data_inicio" class="form-control"  readonly="true"/>

                </div>
                <div class="form-group ">
                    Data de Renovação
                    </br>
                    <form:input type="date" path="data_renovacao" id="data_renovacao" class="form-control"  readonly="true"/>

                </div>
                <div class="form-group ">
                    Justificativa
                    </br>
                    <form:input type="text" path="justificativa" id="justificativa" class="form-control"  readonly="true"/>

                </div>
                <div class="form-actions floatRight">

                    <div  id="colaps" class="collapse"> 
                        <input type="button" value="Cancelar" class="btn btn-primary" onClick="history.go(-1)"> 
                        <button type="submit" class="btn btn-danger">Sim, desejo realmente <b>Remover!</b></button>
                        </br>
                    </div>
                    <div class="form-actions floatRight">
                        </br>

                        <input type="button" value="Voltar" class="btn btn-primary" onClick="history.go(-1)"> 
                        <input type="button"  value="Remover" data-toggle="collapse" data-target="#colaps"  class="btn btn-warning">

                    </div>
                </div>
            </form:form>  
        </div>
    </div>
</body>
    <script type="text/javascript">
        $(function(){
            $("#valor").maskMoney();
        });
    </script>
</html>