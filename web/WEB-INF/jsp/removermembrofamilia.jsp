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
        <link href="<c:url value='https://fonts.googleapis.com/icon?family=Material+Icons' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/maskMoney.js' />"></script>
        <title>Remoção do Benefício</title>
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
                    <h1 class="black text-center">Dados da Família a Remover</h1>
                </div>
                <div class="col-2">
                    <h1 class="black">&nbsp;</h1>
                </div>
            </div>
            </br>
            <form:form method="POST" modelAttribute="familia"  class="form-horizontal" action="/Cras/removerFamilia">
                <form:hidden path="id"  class="form-control input-sm"/>
                <form:hidden path="status"  class="form-control input-sm"/>
                <form:hidden path="cod_cras"  class="form-control input-sm"/>
                <form:hidden path="idFuncionario"  class="form-control input-sm"/>
                <div class="row form-group">    
                    <div class="col-8">Nome do Responsável da Família</div>
                    <div class="col-2">Telefone</div>
                    <div class="col-2">CEP</div>
                </div>
                <div class="row form-group">    
                    <div class="col-8">
                        <form:input type="text" path="responsavel_familiar" id="responsavel_familiar" class="form-control"  readonly="true" />
                    </div>
                    <div class="col-2">
                        <form:input type="text" path="telefone_fixo" id="telefone_fixo" class="form-control phone"  readonly="true"/>
                    </div>
                    <div class="col-2">
                        <form:input type="text" path="cep" id="cep" class="form-control cep"  readonly="true"/>
                    </div>
                </div>
                <div class="row form-group">    
                    <div class="col">Endereço</div>
                    <div class="col">Observações</div>
                </div>
                <div class="row form-group">    
                    <div class="col">
                        <form:textarea rows="1" path="endereco" id="endereco" class="form-control" readonly="true"/>
                    </div>
                    <div class="col">
                        <form:textarea rows="1" path="observacoes" id="observacoes" class="form-control" readonly="true"/>
                    </div>
                </div>    
                <div class="row form-group">    
                    <div class="col">Tipo de Moradia</div>
                    <div class="col">Cômodos da Moradia</div>
                    <div class="col">Condições da Moradia</div>
                </div>
                <div class="row form-group">    
                    <div class="col">
                        <form:input type="text" path="tipo_moradia" id="tipo_moradia" name="tipo_moradia" class="form-control" readonly="true"/>
                    </div>   
                    <div class="col">
                        <form:input type="text" path="comodos_moradia" id="comodos_moradia" name="comodos_moradia" class="form-control" readonly="true"/>
                    </div>   
                    <div class="col">
                        <form:input type="text" path="condicoes_moradia" id="condicoes_moradia" class="form-control" readonly="true"/>
                    </div>
                </div> 
                <div class="row form-group">    
                    <div class="col">Situação Familiar</div>
                    <div class="col">Renda Familiar</div>
                    <div class="col">Data de Cadastro</div>
                </div>
                <div class="row form-group">    
                    <div class="col">
                        <form:input type="text" path="situacao_familiar" id="situacao_familiar" class="form-control" readonly="true" />
                    </div>
                    <div class="col">
                        <form:input type="text" path="renda_familiar" id="renda_familiar" class="form-control renda_familiar" readonly="true"/>
                    </div>
                    <div class="col">
                        <form:input type="date" path="dataCad" id="dataCad" class="form-control" readonly="true"/>
                    </div>
                </div>
                <div class="row form-group">    
                    <div class="col">
                        <div class="form-actions floatRight">
                            <div  id="colaps" class="collapse"> 
                                <input type="button" value="Cancelar" class="btn btn-primary" onClick="history.go(-1)"> 
                                <button type="submit" class="btn btn-danger">Sim, desejo realmente <b>Remover!</b></button>
                                </br>
                            </div>
                            <div class="form-actions floatRight">
                                </br>
                                <input type="button"  value="Remover" data-toggle="collapse" data-target="#colaps"  class="btn btn-warning">
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