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
 
	
        
        <title>Remover Agenda Administrativa</title>
</head>
<body>
    <div class="container"> 
        <div class="col-md-7 cadastro">
 	<h1>Remoção Agenda Administrativa</h1>
            <form:form method="POST" modelAttribute="AgendaAdministrativa"  class="form-horizontal" action="/Cras/removerAgendaAdministrativa">
                <div class="form-group ">
                    <form:hidden path="id"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    <form:hidden path="status"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    Nome do Funcionário
                    </br>
                    <form:input type="text" path="nomeFuncionario" id="nomeFuncionario" class="form-control" readonly="true"/>
                        <div class="has-error">
                            <form:errors path="nomeFuncionario" class="help-inline"/>
                        </div>
                </div>
                <div class="form-group ">
                    Tipo de Agendamento
                    </br>
                    <form:input type="text" path="tipoAgendamento" id="tipoAgendamento" class="form-control" readonly="true"/>
                    <div class="has-error">
                        <form:errors path="tipoAgendamento" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Data
                    </br>
                    <form:input type="date" path="data_agenda" id="data_agenda" class="form-control" readonly="true"/>
                    <div class="has-error">
                        <form:errors path="data_agenda" class="help-inline"/>
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