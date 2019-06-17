<%-- 
    Document   : EditarMembroFamilia
    Created on : 05/06/2019, 17:46:19
    Author     : Marcus
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="<c:url value='../resources/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='https://fonts.googleapis.com/icon?family=Material+Icons' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <link href="<c:url value='../resources/css/principal.css' />" rel="stylesheet"></link>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/maskMoney.js' />"></script>
        <script src="<c:url value='../resources/js/jquery.mask.js' />"></script>
        <title>Edição do Membro da Família</title>
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
                    <h1 class="black text-center">Edição do Membro da Família</h1>
                </div>
                <div class="col-2">
                    <h1 class="black">&nbsp;</h1>
                </div>
            </div>
            </br>
            <form:form method="POST" modelAttribute="membroFamilia"  class="form-horizontal" action="/Cras/editarMembroFamilia">
                <form:hidden path="id"  class="form-control input-sm"/>
                <form:hidden path="status"  class="form-control input-sm"/>
                <form:hidden path="idFuncionario"  class="form-control input-sm"/>
                <form:hidden path="familiaID"  class="form-control input-sm"/>
                <div class="form-group ">
                    <div class="row form-group">    
                        <div class="col-8">
                            <label for="nome">
                                Nome Completo
                            </label>
                        </div>
                        <div class="col-2">
                            <label for="telefone">
                                Telefone
                            </label>
                        </div>
                        <div class="col-2">
                            <label for="celular">
                                Celular
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col-8">
                            <form:input type="text" path="nome" id="nome" class="form-control" required="true"/>
                            <div class="has-error">
                                <form:errors path="nome" class="help-inline"/>
                            </div>
                        </div>
                        <div class="col-2">
                            <form:input type="text" path="telefone" id="telefone" class="form-control phone"/>
                            <div class="has-error">
                                <form:errors path="telefone" class="help-inline"/>
                            </div>
                        </div>   
                        <div class="col-2">
                            <form:input type="text" path="celular" id="celular" class="form-control phone"/>
                            <div class="has-error">
                                <form:errors path="celular" class="help-inline"/>
                            </div>
                        </div>  
                    </div> 
                    <div class="row form-group">    
                        <div class="col">
                            <label for="data_nascimento">
                                Data de Nascimento
                            </label>
                        </div>
                        <div class="col">
                            <label for="sexo">
                                Sexo
                            </label>
                        </div>
                        <div class="col">
                            <label for="cor_raca">
                                Etnia
                            </label>
                        </div>
                        <div class="col">
                            <label for="cadastro_unico">
                                Cadastro Único
                            </label>
                        </div>
                    </div>        
                    <div class="form-group row">
                        <div class="col"> 
                            <form:input type="date" path="data_nascimento" id="data_nascimento" class="form-control" required="true"/>
                            <div class="has-error">
                                <form:errors path="data_nascimento" class="help-inline"/>
                            </div>
                        </div>
                        <div class="col"> 
                            <form:select path="sexo" id="sexo" class="form-control" required="true" name="sexo">
                                <form:option value="null" label="Escolha uma opção:"/>
                                <form:option value="Masculino" label="Masculino"/>
                                <form:option value="Feminino" label="Feminino"/>
                                <form:option value="Outros" label="Outros"/>
                            </form:select> 
                            <div class="has-error">
                                <form:errors path="sexo" class="help-inline"/>
                            </div>
                        </div>
                        <div class="col">                  
                            <form:select path="cor_raca" id="cor_raca" class="form-control" required="true" name="cor_raca">
                                <form:option value="null" label="Escolha uma opção:"/>
                                <form:option value="Branco" label="Branco"/>
                                <form:option value="Amarelo" label="Amarelo"/>
                                <form:option value="Negro" label="Negro"/>
                                <form:option value="Parda" label="Parda"/>
                                <form:option value="Indígena" label="Indígena"/>
                                <form:option value="Outro" label="Não encontrei minha etnia"/>
                            </form:select>                    
                            <div class="has-error">
                                <form:errors path="cor_raca" class="help-inline"/>
                            </div>
                        </div>      
                        <div class="col">
                            <form:input type="text" path="cadastro_unico" id="cadastro_unico" class="form-control"/>
                            <div class="has-error">
                                <form:errors path="cadastro_unico" class="help-inline"/>
                            </div>
                        </div>
                    </div>    
                    <div class="row form-group">    
                        <div class="col">
                            <label for="rg">
                                RG
                            </label>
                        </div>
                        <div class="col">
                            <label for="cpf">
                                CPF
                            </label>
                        </div>
                        <div class="col">
                            <label for="nis">
                                NIS
                            </label>
                        </div>
                        <div class="col">
                            <label for="titulo">
                                Título
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col">
                            <form:input type="text" path="rg" id="rg" class="form-control rg"/>
                            <div class="has-error">
                                <form:errors path="rg" class="help-inline"/>
                            </div>
                        </div>
                        <div class="col">
                            <form:input type="text" path="cpf" id="cpf" class="form-control cpf"/>
                            <div class="has-error">
                                <form:errors path="cpf" class="help-inline"/>
                            </div>
                        </div> 
                        <div class="col">
                            <form:input type="text" path="nis" id="nis" class="form-control nis"/>
                            <div class="has-error">
                                <form:errors path="nis" class="help-inline"/>
                            </div>
                        </div> 
                        <div class="col">
                            <form:input type="text" path="titulo" id="titulo" class="form-control titulo"/>
                            <div class="has-error">
                                <form:errors path="titulo" class="help-inline"/>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <label for="nome_pai">
                                Nome do Pai
                            </label>
                        </div>
                        <div class="col">
                            <label for="nome_mae">
                                Nome da Mãe
                            </label>
                        </div>
                    </div> 
                    <div class="form-group row">
                        <div class="col"> 
                            <form:input type="text" path="nome_pai" id="nome_pai" class="form-control "/>
                            <div class="has-error">
                                <form:errors path="nome_pai" class="help-inline"/>
                            </div>
                        </div>
                        <div class="col"> 
                            <form:input type="text" path="nome_mae" id="nome_mae" class="form-control "/>
                            <div class="has-error">
                                <form:errors path="nome_mae" class="help-inline"/>
                            </div>
                        </div>
                    </div>  
                    <div class="row form-group">    
                        <div class="col-4">
                            <label for="certidao_nasc_casa">
                                Certidão de Nascimento/Casamento
                            </label>
                        </div>
                        <div class="col-2">
                            <label for="relacao_familiar">
                                Relação Familiar
                            </label>
                        </div>
                        <div class="col">
                            <label for="funcao_familiar">
                                Função Familiar
                            </label>
                        </div>
                        <div class="col">
                            <label for="naturalidade">
                                Naturalidade
                            </label>
                        </div>
                    </div>   
                    <div class="form-group row">
                        <div class="col-4">  
                            <form:input type="text" path="certidao_nasc_casa" id="certidao_nasc_casa" class="form-control " />
                            <div class="has-error">
                                <form:errors path="certidao_nasc_casa" class="help-inline"/>
                            </div>
                        </div>              
                        <div class="col-2">              
                            <form:select path="relacao_familiar" id="relacao_familiar" class="form-control" required="true" name="relacao_familiar">
                                <form:option value="" label="Escolha uma opção:"/>
                                <form:option value="Responsável" label="Responsável"/>
                                <form:option value="Esposo(a)" label="Esposo(a)"/>
                                <form:option value="Pai" label="Pai"/>
                                <form:option value="Mãe" label="Mãe"/>
                                <form:option value="Padastro" label="Padastro"/>
                                <form:option value="Madastra" label="Madastra"/>
                                <form:option value="Filho(a)" label="Filho(a)"/>
                                <form:option value="Tio(a)" label="Tio(a)"/>
                                <form:option value="Primo(a)" label="Primo(a)"/>
                                <form:option value="Sobrinho(a)" label="Sobrinho(a)"/>
                                <form:option value="Avô(ó)" label="Avô(ó)"/>
                                <form:option value="Outros" label="Outros"/>
                            </form:select> 
                            <div class="has-error">
                                <form:errors path="relacao_familiar" class="help-inline"/>
                            </div>
                        </div> 
                        <div class="col">
                            <form:select path="funcao_familiar" id="funcao_familiar" class="form-control" required="true" name="funcao_familiar">
                                <form:option value="" label="Escolha uma opção:"/>
                                <form:option value="Trabalha em tempo integral" label="Trabalha em tempo integral"/>
                                <form:option value="Trabalha em meio período" label="Trabalha em meio período"/>
                                <form:option value="Desempregado(a)" label="Desempregado(a)"/>
                                <form:option value="Trabalha em casa" label="Trabalha em casa"/>
                                <form:option value="Estudante" label="Estudante"/>
                                <form:option value="Estuda e trabalha" label="Estuda e trabalha"/>
                                <form:option value="Aposentada(a)" label="Aposentada(a)"/>
                                <form:option value="Menor" label="Menor"/>
                                <form:option value="Do lar" label="Do lar"/>
                                <form:option value="Outros" label="Outros"/>
                            </form:select> 
                            <div class="has-error">
                                <form:errors path="funcao_familiar" class="help-inline"/>
                            </div>
                        </div>
                        <div class="col"> 
                            <form:input type="text" path="naturalidade" id="naturalidade" class="form-control "/>
                            <div class="has-error">
                                <form:errors path="naturalidade" class="help-inline"/>
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
                $('.phone').mask('00 #0000-0000');
                $('.phone_with_ddd').mask('(99) 9999-9999');
                $('.phone_us').mask('(999) 999-9999');
                $('.mixed').mask('AAA 000-S0S');
                $('.titulo').mask('0000 0000 0000 00');
                $('.rg').mask('000.000.000-0');
                $('.nis').mask('000.00000.00-0');
                $('.cpf').mask('000.000.000-00');
            });
        </script>
    </body>
</html>