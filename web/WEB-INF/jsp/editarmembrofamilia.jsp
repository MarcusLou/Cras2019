<%-- 
    Document   : EditarMembroFamilia
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
        <title>Edição do Membro da Família</title>
</head>
<body>
    <div class="container"> 
        <div class="col-md-6 cadastro">
 	<h1>Edição do Membro da Família</h1>
            <form:form method="POST" modelAttribute="membroFamilia"  class="form-horizontal" action="/Cras/editarMembroFamilia">
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
                    <form:hidden path="familiaID"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    Nome
                    </br>
                    <form:input type="text" path="nome" id="nome" class="form-control" required=""/>
                        <div class="has-error">
                            <form:errors path="nome" class="help-inline"/>
                        </div>
                </div>
                <div class="form-group ">
                    Função Familiar
                    </br>
                    <form:input  type="text" path="funcao_familiar" id="funcao_familiar" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="funcao_familiar" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    CPF
                    </br>
                    <form:input type="text" path="cpf" id="cpf" class="form-control cpf" required=""/>
                    <div class="has-error">
                        <form:errors path="cpf" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Cadastro Único
                    </br>
                    <form:input type="number" path="cadastro_unico" id="cadastro_unico" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="cadastro_unico" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    NIS
                    </br>
                    <form:input type="number" path="nis" id="nis" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="nis" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    RG
                    </br>
                    <form:input type="number" path="rg" id="rg" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="rg" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Título
                    </br>
                    <form:input type="number" path="titulo" id="titulo" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="titulo" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Telefone
                    </br>
                    <form:input type="text" path="telefone" id="telefone" class="form-control phone" required=""/>
                    <div class="has-error">
                        <form:errors path="telefone" class="help-inline"/>
                    </div>
                </div>          
                <div class="form-group ">
                    Celular
                    </br>
                    <form:input type="text" path="celular" id="celular" class="form-control phone" required=""/>
                    <div class="has-error">
                        <form:errors path="celular" class="help-inline"/>
                    </div>
                </div>               
                <div class="form-group ">
                    Relação Familiar
                    </br>                    
                    <form:select path="relacao_familiar" id="relacao_familiar" class="form-control" required="" name="relacao_familiar">
                        <form:option value="" label="Escolha uma opção:"/>
                        <form:option value="Própria" label="Própria"/>
                        <form:option value="Alugada" label="Alugada"/>
                        <form:option value="Cedida" label="Cedida"/>
                        <form:option value="Morador Rua" label="Morador Rua"/>
                        <form:option value="Outros" label="Outros"/>
                    </form:select> 
                    <div class="has-error">
                        <form:errors path="relacao_familiar" class="help-inline"/>
                    </div>
                </div> 
                <div class="form-group ">
                    Cor/Raça
                    </br>                    
                    <form:select path="cor_raca" id="cor_raca" class="form-control" required="" name="cor_raca">
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
                        <form:errors path="cor_raca" class="help-inline"/>
                    </div>
                </div>        
                <div class="form-group ">
                    Naturalidade
                    </br>
                    <form:input type="text" path="naturalidade" id="naturalidade" class="form-control " required="" />
                    <div class="has-error">
                        <form:errors path="naturalidade" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Nome da Mãe
                    </br>
                    <form:input type="text" path="nome_mae" id="nome_mae" class="form-control " required=""  />
                    <div class="has-error">
                        <form:errors path="nome_mae" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Nome do Pai
                    </br>
                    <form:input type="text" path="nome_pai" id="nome_pai" class="form-control " required=""  />
                    <div class="has-error">
                        <form:errors path="nome_pai" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Certidão de Nascimento
                    </br>
                    <form:input type="text" path="certidao_nascimento" id="certidao_nascimento" class="form-control " required="" data-thousands="." data-decimal="," data-prefix="R$ " />
                    <div class="has-error">
                        <form:errors path="certidao_nascimento" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Data de Nascimento
                    </br>
                    <form:input type="date" path="data_nascimento" id="data_nascimento" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="data_nascimento" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Sexo
                    </br>
                    <form:textarea rows="4" type="text" path="sexo" id="sexo" class="form-control" required=""/>
                    <div class="has-error">
                        <form:errors path="sexo" class="help-inline"/>
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