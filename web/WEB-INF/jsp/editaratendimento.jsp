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
         <script src="<c:url value='../resources/js/jquery.mask.js' />" ></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
       
	
        
        <title>Edi��o Atendimento</title>
</head>
<body>
    <div class="container"> 
        <div class="col-md-7 cadastro">
 	<h1>Edi��o Atendimento</h1>
            <form:form method="POST" modelAttribute="atendimento"  class="form-horizontal" action="/Cras/editarAtendimento">
                <div class="form-group ">
                    <form:hidden path="id"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    <form:hidden path="status"  class="form-control input-sm"/>
                </div>
                <div class="form-group ">
                    Nome do Membro da Fam�lia
                    </br>
                    <form:input type="text" path="nomeMembro" id="nomeMembro" class="form-control" required="true"/>
                        <div class="has-error">
                            <form:errors path="nomeMembro" class="help-inline"/>
                        </div>
                </div>
                <div class="form-group ">
                    CPF
                    </br>
                    <form:input type="text" path="cpf_membro" id="cpf_membro" class="form-control cpf_membro" required="true"/>
                    <div class="has-error">
                        <form:errors path="cpf_membro" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Endere�o
                    </br>
                    <form:input type="text" path="endereco" id="endereco" class="form-control" required="true"/>
                    <div class="has-error">
                        <form:errors path="endereco" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Data
                    </br>
                    <form:input type="date" path="data_atendimento" id="data_atendimento" class="form-control" required="true"/>
                    <div class="has-error">
                        <form:errors path="data_atendimento" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Hor�rio
                    </br>
                    <form:input type="time" path="horario" id="horario" class="form-control" required="true"/>
                    <div class="has-error">
                        <form:errors path="horario" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Dura��o
                    </br>
                    <form:input type="time" path="duracao" id="duracao" class="form-control"/>
                    <div class="has-error">
                        <form:errors path="duracao" class="help-inline"/>
                    </div>
                </div>
                <div class="form-group ">
                    Descri��o
                    </br>
                    <form:input type="text" path="descricao" id="descricao" class="form-control"/>
                    <div class="has-error">
                        <form:errors path="descricao" class="help-inline"/>
                    </div>
                </div>
                <div class="form-actions floatRight">
                    
                    <div  id="colaps" class="collapse"> 
                         
                        <button type="submit" class="btn btn-danger">Clique aqui para confirmar a Edi��o!</button>
                       <label><b>Clique no bot�o "Editar" para encerrar a confirma��o</b></label>
                        </br>
                    </div>
                    <div class="form-actions floatRight">
                        </br>
                        
                        <input type="button" value="Voltar" class="btn btn-primary" onClick="history.go(-1)"> 
                        <input type="button"  value="Editar" data-toggle="collapse" data-target="#colaps"  class="btn btn-warning">
                
                    </div>
                </div>
            </form:form>
        </div>
    </div>

 <script type="text/javascript">
                  $(function(){
                      $("#cpf_membro").mask("000.000.000-00");
                  });
 </script>

</body>
</html>