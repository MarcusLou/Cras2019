<%-- 
    Document   : Editarfamilia
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
        <title>Edição da Família</title>
</head>
<body>
    <div class="container"> 
        <div class="col-md-6 cadastro">
 	<h1>Edição da Família</h1>
            <form:form method="POST" modelAttribute="familia"  class="form-horizontal" action="/Cras/editarFamilia">
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
                    <form:hidden path="comodos_moradia"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    <form:hidden path="idFuncionario"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    Nome do Responsável pela Família
                    </br>
                    <form:input type="text" path="responsavel_familiar" id="responsavel_familiar" class="form-control" required=""/>
                        <div class="has-error">
                            <form:errors path="responsavel_familiar" class="help-inline"/>
                        </div>
                </div>
                <div class="form-group ">
                    CEP
                    </br>
                    <form:input type="number" path="cep" id="cep" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="cep" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Situação da Familiar
                    </br>
                    <form:input type="text" path="situacao_familiar" id="situacao_familiar" class="form-control situacao_familiar" required="" data-thousands="." data-decimal="," data-prefix="R$ " />
                    <div class="has-error">
                        <form:errors path="situacao_familiar" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Renda Familiar
                    </br>
                    <form:input type="text" path="renda_familiar" id="renda_familiar" class="form-control renda_familiar" required="" data-thousands="." data-decimal="," data-prefix="R$ " />
                    <div class="has-error">
                        <form:errors path="renda_familiar" class="help-inline"/>
                    </div>
                </div>
                    
                <div class="form-group ">
                    Data de Início
                    </br>
                    <form:input type="date" path="data" id="data" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="data" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Telefone
                    </br>
                    <form:input type="date" path="telefone_fixo" id="telefone_fixo" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="telefone_fixo" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Endereço
                    </br>
                    <form:input type="text" path="endereco" id="endereco" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="endereco" class="help-inline"/>
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
                $("#renda_familiar").maskMoney();
            });
        </script>
</body>
</html>