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
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/maskMoney.js' />"></script>
        <title>Edição da Família</title>
</head>
<body>       
    <div class="container">        
                </br>

        <div>
            <button type="button" class="btn btn-primary" onclick="javascript:window.location.href='renderizarMembroFamilia/${atributo.id}'" >Cadastrar Membro na Família</button>  
            <button type="button" class="btn btn-primary"  onclick="javascript:window.location.href='renderizarDespesas/${atributo.id}'" >Despesas</button>  
        </div>
        </br>
       
    </div>
    <div class="container">
        <c:forEach items= "${familiaSelecionada}" var="atributo">
            <div class="container texto-b table table-bordered ">    
                <div class="container"> 
                    <div class="row">    
                        <div class="col-8">Nome Resposável</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col">Telefone</div>
                    </div>
                    <div class="row ">    
                        <div class="col-8 table-bordered rounded ">${atributo.responsavel_familiar}</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col table-bordered rounded">${atributo.telefone_fixo}</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row">    
                        <div class="col-8">Endereço</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col">CEP</div>
                    </div>
                    <div class="row">    
                        <div class="col-8 table-bordered rounded"> ${atributo.endereco}</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col table-bordered rounded"> ${atributo.cep}</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row">    
                        <div class="col">Tipo de Moradia</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col">Condições da Moradia</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col">Cômodos na Moradia</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col">Situação Familiar</div>
                    </div>
                    <div class="row">    
                        <div class="col table-bordered rounded"> ${atributo.tipo_moradia}</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col table-bordered rounded"> ${atributo.condicoes_moradia}</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col table-bordered rounded"> ${atributo.comodos_moradia}</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col  table-bordered rounded"> ${atributo.situacao_familiar}</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row">    
                        <div class="col">Observações</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col">Renda Familiar</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col">Data de Cadastro</div>
                    </div>
                    <div class="row">    
                        <div class="col  table-bordered rounded"> ${atributo.observacoes}</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col  table-bordered rounded"> ${atributo.renda_familiar}</div>
                        <div class="col-1">&nbsp;</div>
                        <div class="col  table-bordered rounded"> ${atributo.dataCad}</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row">    
                        <div class="col">  &nbsp;</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row"> 
                        
                        <div class="col">  &nbsp;</div>
                        <div class="col align-content-center">
                            <button type="button" class="btn btn-warning" onclick="javascript:window.location.href='renderizarEditarFamilia/${atributo.id}'" >Editar Família</button>  
                            <button type="button" class="btn btn-danger"  onclick="javascript:window.location.href='renderizarRemoverFamilia/${atributo.id}'" >Remover Família</button>
                        </div>   
                        
                        <div class="col">  &nbsp;</div>
                    </div>
                </div>
                <div class="container"> 
                    <div class="row">    
                        <div class="col">  &nbsp;</div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>