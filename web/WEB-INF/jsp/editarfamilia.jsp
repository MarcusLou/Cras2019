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
                    <form:hidden path="idFuncionario"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    Nome do Responsável pela Família
                    </br>
                    <form:input type="text" path="responsavel_familiar" id="responsavel_familiar" class="form-control" required="true"/>
                        <div class="has-error">
                            <form:errors path="responsavel_familiar" class="help-inline"/>
                        </div>
                </div>
                <div class="form-group ">
                    Endereço
                    </br>
                    <form:textarea rows="2" type="text" path="endereco" id="endereco" class="form-control" required="true"/>
                    <div class="has-error">
                        <form:errors path="endereco" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    CEP
                    </br>
                    <form:input type="text" path="cep" id="cep" class="form-control cep" required="true"/>
                    <div class="has-error">
                        <form:errors path="cep" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Telefone
                    </br>
                    <form:input type="text" path="telefone_fixo" id="telefone_fixo" class="form-control phone" required="true"/>
                    <div class="has-error">
                        <form:errors path="telefone_fixo" class="help-inline"/>
                    </div>
                </div>               
                <div class="form-group ">
                    Tipo de Moradia
                    </br>                    
                    <form:select path="tipo_moradia" id="tipo_moradia" class="form-control" required="true" name="tipo_moradia">
                        <form:option value="" label="Escolha uma opção:"/>
                        <form:option value="Própria" label="Própria"/>
                        <form:option value="Alugada" label="Alugada"/>
                        <form:option value="Cedida" label="Cedida"/>
                        <form:option value="Morador Rua" label="Morador Rua"/>
                        <form:option value="Outros" label="Outros"/>
                    </form:select> 
                    <div class="has-error">
                        <form:errors path="tipo_moradia" class="help-inline"/>
                    </div>
                </div> 
                <div class="form-group ">
                    Cômodos da Moradia
                    </br>                    
                    <form:select path="comodos_moradia" id="comodos_moradia" class="form-control" required="true" name="comodos_moradia">
                        <form:option value="" label="Escolha uma opção:"/>
                        <form:option value="0" label="nenhum"/>
                        <form:option value="1" label="1 Cômodo"/>
                        <form:option value="2" label="2 Cômodo"/>
                        <form:option value="3" label="3 Cômodo"/>
                        <form:option value="4" label="4 Cômodo"/>
                        <form:option value="5" label="5 Cômodo"/>
                        <form:option value="6" label="6 Cômodo"/>
                        <form:option value="7" label="7 Cômodo"/>
                        <form:option value="8<" label="8 ou mais Cômodo"/>
                    </form:select>                    
                    <div class="has-error">
                        <form:errors path="comodos_moradia" class="help-inline"/>
                    </div>
                </div>        
                <div class="form-group ">
                    Condições da Moradia
                    </br>
                    <form:input type="text" path="condicoes_moradia" id="condicoes_moradia" class="form-control " required="true" />
                    <div class="has-error">
                        <form:errors path="condicoes_moradia" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Situação da Familiar
                    </br>
                    <form:input type="text" path="situacao_familiar" id="situacao_familiar" class="form-control " required="true"  />
                    <div class="has-error">
                        <form:errors path="situacao_familiar" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Renda Familiar
                    </br>
                    <form:input type="text" path="renda_familiar" id="renda_familiar" class="form-control renda_familiar" required="true" data-thousands="." data-decimal="," data-prefix="R$ " />
                    <div class="has-error">
                        <form:errors path="renda_familiar" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Data de Cadastro
                    </br>
                    <form:input type="date" path="dataCad" id="dataCad" class="form-control" required="true"/>
                    <div class="has-error">
                        <form:errors path="dataCad" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Observações
                    </br>
                    <form:textarea rows="4" type="text" path="observacoes" id="observacoes" class="form-control" required="true"/>
                    <div class="has-error">
                        <form:errors path="observacoes" class="help-inline"/>
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
            $(document).ready(function(){
                $('.date').mask('11/11/1111');
                $('.time').mask('00:00:00');
                $('.date_time').mask('99/99/9999 00:00:00');
                $('.cep').mask('99999-999');
                $('.phone').mask('(99)#9999-9999');
                $('.phone_with_ddd').mask('(99) 9999-9999');
                $('.phone_us').mask('(999) 999-9999');
                $('.mixed').mask('AAA 000-S0S');
            });
            $(function(){
                $("#renda_familiar").maskMoney();
            });
        </script>
</body>
</html>