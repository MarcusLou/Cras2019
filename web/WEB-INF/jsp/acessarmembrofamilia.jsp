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
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
        <script src="<c:url value='../resources/js/principal.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/maskMoney.js' />"></script>
        <style>
            .textoAzul{
                color:  #005cbf;
            }
        </style>
        <title>Edi��o da Fam�lia</title>
    </head>
    <body>   
        <c:forEach items= "${familiaSelecionada}" var="atributo">
            <div class="container">        
                <div class="row">
                    <div class="col-2">
                        <button style="font-size:24px" class="btn btn-sm btn-light" onClick="history.go(-1)" title="Voltar a p�gina anterior!">
                            <i class="material-icons">undo</i>Voltar
                        </button>
                    </div>
                    <div class="col">
                        <h1 class="black text-center">Dados da Fam�lia</h1>
                    </div>
                    <div class="col-2">
                        <h1 class="black">&nbsp;</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        <button type="button" class="btn btn-primary" onclick="javascript:window.location.href='/Cras/renderizarBuscarMembroFamilia'">Membros</button>  
                        <button type="button" class="btn btn-primary" >Despesas</button>  
                        <button type="button" class="btn btn-primary"  onclick="javascript:window.location.href='/Cras/renderizarBuscarBeneficio'" >Benef�cios</button>  
                    </div>
                    <div class="col">
                        <h1 class="black">&nbsp;</h1>
                    </div>
                    <div class="col-4">
                        <h1 class="black">&nbsp;</h1>
                    </div>
                </div>
            </div>
            <div class="container texto-b table table-bordered ">    
                <div class="container"> 
                    <div class="row textoAzul">    
                        <div class="col-8">Nome Respos�vel</div>
                        &nbsp;
                        <div class="col">Telefone</div>
                        &nbsp;
                        <div class="col">CEP</div>
                    </div>
                    <div class="row ">    
                        <div class="col-8 table-bordered rounded ">${atributo.responsavel_familiar}</div>
                        &nbsp;
                        <div class="col table-bordered rounded">${atributo.telefone_fixo}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.cep}</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row textoAzul">    
                        <div class="col">Endere�o</div>
                        &nbsp;
                        <div class="col">Observa��es</div>
                    </div>
                    <div class="row">    
                        <div class="col table-bordered rounded"> ${atributo.endereco}</div>
                        &nbsp;
                        <div class="col  table-bordered rounded"> ${atributo.observacoes}</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row textoAzul">    
                        <div class="col">Tipo de Moradia</div>
                        &nbsp;
                        <div class="col">C�modos na Moradia</div>
                        &nbsp;
                        <div class="col">Condi��es da Moradia</div>
                    </div>
                    <div class="row">    
                        <div class="col table-bordered rounded"> ${atributo.tipo_moradia}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.comodos_moradia}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.condicoes_moradia}</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row textoAzul">   
                        <div class="col">Situa��o Familiar</div> 
                        &nbsp;
                        <div class="col">Renda Familiar</div>
                        &nbsp;
                        <div class="col">Data de Cadastro</div>
                    </div>
                    <div class="row">    
                        <div class="col  table-bordered rounded"> ${atributo.situacao_familiar}</div>
                        &nbsp;
                        <div class="col  table-bordered rounded"> ${atributo.renda_familiar}</div>
                        &nbsp;
                        <div class="col  table-bordered rounded"> ${atributo.dataCad}</div>
                    </div>
                </div>
                </br>
                <div class="container"> 
                    <div class="row"> 
                        <div class="col">&nbsp;</div>
                        <div class="col align-content-center">
                            <button type="button" class="btn btn-warning" onclick="javascript:window.location.href='/Cras/renderizarEditarFamilia/${atributo.id}'" >Editar Fam�lia</button>  
                            <button type="button" class="btn btn-danger"  onclick="javascript:window.location.href='/Cras/renderizarRemoverFamilia/${atributo.id}'" >Remover Fam�lia</button>
                        </div>  
                        <div class="col">&nbsp;</div>
                    </div>
                    </br>
                </div>
            </div>
            </div>
        </c:forEach>
    </body>
</html>