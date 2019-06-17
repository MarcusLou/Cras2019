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
        <title>Acesso ao Membro da Família</title>
    </head>
    <body>   
        <c:forEach items= "${membroFamiliaSelecionada}" var="atributo">
            <div class="container">        
                <div class="row">
                    <div class="col-2">
                        <button style="font-size:24px" class="btn btn-sm btn-light" onClick="history.go(-1)" title="Voltar a página anterior!">
                            <i class="material-icons">undo</i>Voltar
                        </button>
                    </div>
                    <div class="col">
                        <h1 class="black text-center">Dados do Membro da Família</h1>
                    </div>
                    <div class="col-2">
                        <h1 class="black">&nbsp;</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        <button type="button" class="btn btn-primary" >Acompanhamento</button>  
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
                        <div class="col-8">Nome Completo</div>
                        &nbsp;
                        <div class="col">Telefone</div>
                        &nbsp;
                        <div class="col">Celular</div>
                    </div>
                    <div class="row ">    
                        <div class="col-8 table-bordered rounded ">${atributo.nome}</div>
                        &nbsp;
                        <div class="col table-bordered rounded">${atributo.telefone}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.celular}</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row textoAzul">    
                        <div class="col">Data de Nascimento</div>
                        &nbsp;
                        <div class="col">Sexo</div>
                        &nbsp;
                        <div class="col">Etnia</div>
                        &nbsp;
                        <div class="col">Cadastro Único</div>
                    </div>
                    <div class="row">    
                        <div class="col  table-bordered rounded"> ${atributo.data_nascimento}</div>
                        &nbsp;
                        <div class="col  table-bordered rounded"> ${atributo.sexo}</div>
                        &nbsp;
                        <div class="col  table-bordered rounded"> ${atributo.cor_raca}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.cadastro_unico}</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row textoAzul">    
                        <div class="col">RG</div>
                        &nbsp;
                        <div class="col">CPF</div>
                        &nbsp;
                        <div class="col">NIS</div>
                        &nbsp;
                        <div class="col">Título</div>
                    </div>
                    <div class="row">    
                        <div class="col table-bordered rounded"> ${atributo.rg}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.cpf}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.nis}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.titulo}</div>
                        &nbsp;
                    </div>
                </div>
                <div class="container"> 
                    <div class="row textoAzul">   
                        <div class="col">Nome do Pai</div> 
                        &nbsp;
                        <div class="col">Nome da Mãe</div>
                        &nbsp;
                        <div class="col">Naturalidade</div>
                    </div>
                    <div class="row">    
                        <div class="col  table-bordered rounded"> ${atributo.nome_pai}</div>
                        &nbsp;
                        <div class="col  table-bordered rounded"> ${atributo.nome_mae}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.naturalidade}</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row textoAzul">    
                        <div class="col">Certidão de Nascimento/Casamento</div>
                        &nbsp;
                        <div class="col">Relação Familiar</div>
                        &nbsp;
                        <div class="col">Função Familiar</div>
                    </div>
                    <div class="row">    
                        <div class="col  table-bordered rounded"> ${atributo.certidao_nasc_casa}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.relacao_familiar}</div>
                        &nbsp;
                        <div class="col table-bordered rounded"> ${atributo.funcao_familiar}</div>
                    </div>
                </div>
                </br>
                <div class="container"> 
                    <div class="row"> 
                        <div class="col-1">&nbsp;</div>
                        <div class="col text-center">
                            <button type="button" class="btn btn-warning" onclick="javascript:window.location.href='/Cras/renderizarEditarMembroFamilia/${atributo.id}'" >Editar Membro da Família</button>  
                            <button type="button" class="btn btn-danger"  onclick="javascript:window.location.href='/Cras/renderizarRemoverMembroFamilia/${atributo.id}'" >Remover Membro da Família</button>
                        </div>  
                        <div class="col-1">&nbsp;</div>
                    </div>
                    </br>
                </div>
            </div>
        </c:forEach>
    </body>
</html>