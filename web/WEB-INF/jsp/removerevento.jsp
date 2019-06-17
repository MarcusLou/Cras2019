<%-- 
    Document   : buscaevento
    Created on : 23/04/2019, 17:46:19
    Author     : Marcus
--%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value='../resources/css/bootstrap.css' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        
	
        
        <title>Remover Evento</title>
</head>
<body>
    <div class="container"> 
        <div class="col-md-6 cadastro">
 	<h1>Remover Evento</h1>
            <form:form method="POST" modelAttribute="evento"  class="form-horizontal" action="/Cras/removerEvento">
                <div class="form-group ">
                    <form:hidden path="id"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    <form:hidden path="status"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    Nome do Evento
                    </br>
                    <form:input type="text" path="nomeEvento" id="nomeEvento" class="form-control" readonly="true"/>
                        <div class="has-error">
                            <form:errors path="nomeEvento" class="help-inline"/>
                        </div>
                </div>
                <div class="form-group ">
                    Nome do Coordenador
                    </br>
                    <form:input type="text" path="nomeCoordenador" id="nomeCoordenador" class="form-control" readonly="true"/>
                    <div class="has-error">
                        <form:errors path="nomeCoordenador" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Endereço
                    </br>
                    <form:input type="text" path="endereco" id="endereco" class="form-control" readonly="true"/>
                    <div class="has-error">
                        <form:errors path="endereco" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Data de Início
                    </br>
                    <form:input type="date" path="dataInicio" id="dataInicio" class="form-control" readonly="true"/>
                    <div class="has-error">
                        <form:errors path="dataInicio" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Data de Término
                    </br>
                    <form:input type="date" path="dataTermino" id="dataTermino" class="form-control" readonly="true"/>
                    <div class="has-error">
                        <form:errors path="dataTermino" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Horário
                    </br>
                    <form:input type="time" path="horario" id="horario" class="form-control" readonly="true"/>
                    <div class="has-error">
                        <form:errors path="horario" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Duração
                    </br>
                    <form:input type="time" path="duracao" id="duracao" class="form-control" readonly="true"/>
                    <div class="has-error">
                        <form:errors path="duracao" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Descrição
                    </br>
                    <form:input type="text" path="descricao" id="descricao" class="form-control" readonly="true"/>
                    <div class="has-error">
                        <form:errors path="descricao" class="help-inline"/>
                    </div>
                </div>
              <div class="form-actions floatRight">
                    
                    <div  id="colaps" class="collapse"> 
                         
                        <button type="submit" class="btn btn-danger">Clique aqui para confirmar a Remoção!</button>
                        <label><b>Clique no botão "remover" para encerrar a confirmação</b></label>
                        </br>
                    </div>
                    <div class="form-actions floatRight">
                        </br>
                        
                        <input type="button" value="Voltar" class="btn btn-primary" onClick="history.go(-1)"> 
                        <input type="button"  value="Remover" data-toggle="collapse" data-target="#colaps"  class="btn btn-danger">
                
                    </div>
                </div>
            </form:form>
	</div>
    </div>
</body>
</html>