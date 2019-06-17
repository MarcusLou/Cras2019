<%-- 
    Document   : Editarfamilia
    Created on : 05/06/2019, 17:46:19
    Author     : Marcus
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="<c:url value='../resources/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='../resources/css/principal.css' />" rel="stylesheet"></link>
        <link href="<c:url value='https://fonts.googleapis.com/icon?family=Material+Icons' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/maskMoney.js' />"></script>
        <script src="<c:url value='../resources/js/jquery.mask.js' />"></script>
        <title>Edição da Família</title>
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
                    <h1 class="black text-center">Edição da Família</h1>
                </div>
                <div class="col-2">
                    <h1 class="black">&nbsp;</h1>
                </div>
            </div>
            </br>
            <form:form method="POST" modelAttribute="familia"  class="form-horizontal" action="/Cras/editarFamilia">
                <form:hidden path="id"  class="form-control input-sm"/>
                <form:hidden path="status"  class="form-control input-sm"/>
                <form:hidden path="cod_cras"  class="form-control input-sm"/>
                <form:hidden path="idFuncionario"  class="form-control input-sm"/>
                <div class="form-group ">
                    <div class="row form-group">    
                        <div class="col-8">
                            <label for="responsavel_familiar">
                                Nome do Responsável da Família
                            </label>
                        </div>
                        <div class="col-2">
                            <label for="telefone_fixo">
                                Telefone
                            </label>
                        </div>
                        <div class="col-2">
                            <label for="cep">
                                CEP
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col-8">
                            <form:input type="text" path="responsavel_familiar" id="responsavel_familiar" class="form-control" required="true"/>
                            <div class="has-error">
                                <form:errors path="responsavel_familiar" class="help-inline"/>
                            </div>
                        </div>
                        <div class="col-2">
                            <form:input type="text" path="telefone_fixo" id="telefone_fixo" class="form-control phone" required="true"/>
                            <div class="has-error">
                                <form:errors path="telefone_fixo" class="help-inline"/>
                            </div> 
                        </div>
                        <div class="col-2">
                            <form:input type="text" path="cep" id="cep" class="form-control cep"/>
                            <div class="has-error">
                                <form:errors path="cep" class="help-inline"/>
                            </div>
                        </div>
                    </div> 
                    <div class="row form-group">    
                        <div class="col">
                            <label for="endereco">
                                Endereço
                            </label>
                        </div>
                        <div class="col">
                            <label for="observacoes">
                                Observações
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <form:textarea rows="1" path="endereco" id="endereco" class="form-control" required="true"/>
                            <div class="has-error">
                                <form:errors path="endereco" class="help-inline"/>
                            </div>
                        </div>
                        <div class="col">
                            <form:textarea rows="1" path="observacoes" id="observacoes" class="form-control" required="true"/>
                            <div class="has-error">
                                <form:errors path="observacoes" class="help-inline"/>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <label for="tipo_moradia">
                                Tipo de Moradia
                            </label>
                        </div>
                        <div class="col">
                            <label for="comodos_moradia">
                                Cômodos da Moradia
                            </label>
                        </div>
                        <div class="col">
                            <label for="condicoes_moradia">
                                Condições da Moradia
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <form:select path="tipo_moradia" id="tipo_moradia" class="form-control" name="tipo_moradia">
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
                        <div class="col">
                            <form:select path="comodos_moradia" id="comodos_moradia" class="form-control" name="comodos_moradia">
                                <form:option value="" label="Escolha uma opção:"/>
                                <form:option value="0" label="nenhum"/>
                                <form:option value="1" label="Um Cômodos"/>
                                <form:option value="2" label="Dois Cômodos"/>
                                <form:option value="3" label="Três Cômodos"/>
                                <form:option value="4" label="Quatro Cômodos"/>
                                <form:option value="5" label="Cinco Cômodos"/>
                                <form:option value="6" label="Seis Cômodos"/>
                                <form:option value="7" label="Sete Cômodos"/>
                                <form:option value="8<" label="Oito ou mais Cômodos"/>
                            </form:select>                    
                            <div class="has-error">
                                <form:errors path="comodos_moradia" class="help-inline"/>
                            </div> 
                        </div>
                        <div class="col">
                            <form:input type="text" path="condicoes_moradia" id="condicoes_moradia" class="form-control" />
                            <div class="has-error">
                                <form:errors path="condicoes_moradia" class="help-inline"/>
                            </div>
                        </div>
                    </div>        
                    <div class="row form-group">    
                        <div class="col">
                            <label for="situacao_familiar">
                                Situação Familiar
                            </label>
                        </div>
                        <div class="col">
                            <label for="renda_familiar">
                                Renda Familiar
                            </label>
                        </div>
                        <div class="col">
                            <label for="dataCad">
                                Data de Cadastro
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <form:input type="text" path="situacao_familiar" id="situacao_familiar" class="form-control" required="true"  />
                            <div class="has-error">
                                <form:errors path="situacao_familiar" class="help-inline"/>
                            </div> 
                        </div>
                        <div class="col">
                            <form:input type="text" path="renda_familiar" id="renda_familiar" class="form-control renda_familiar" required="true" data-thousands="." data-decimal="," data-prefix="R$ " />
                            <div class="has-error">
                                <form:errors path="renda_familiar" class="help-inline"/>
                            </div>
                        </div>
                        <div class="col">
                            <form:input type="date" path="dataCad" id="dataCad" class="form-control" required="true"/>
                            <div class="has-error">
                                <form:errors path="dataCad" class="help-inline"/>
                            </div>
                        </div>
                    </div>    
                    <div class="row form-group">    
                        <div class="col">
                            <div class="form-actions text-center">
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
                </div>
            </form:form>
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