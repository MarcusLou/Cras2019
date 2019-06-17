<%-- 
    Document   : cadastrarevento
    Created on : 03/04/2019, 02:46:18
    Author     : Ronnie
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- mapear boot por tags -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <script src="resources/js/jQuery.js"></script>
         <script src="resources/js/jquery.mask.js" ></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script>
        <title>Cadastrar Atendimento</title>
    </head>
    <body>
        <div class="container"> 
            <div class="col-md-7 cadastro">
            <h1>Cadastrar Atendimento!</h1>
            <div> 
                <form action="cadastrarAtendimento" method="POST">
                    <div class="form-group"> 
                        Nome do Membro da Família
                        </br>
                        <input type="text" name="nomeMembro" id="nomeMembro" class="form-control" required="">
                    </div>
                    <div class="form-group"> 
                        CPF
                        </br>
                        <input type="text" name="cpf_membro" id="cpf_membro" class="form-control" required="" placeholder="Digite o cpf na forma 000.000.000-00">
                    </div>
                    </div>
                    
                    <div class="form-group"> 
                        Endereço
                        </br>
                        <input type="text" name="endereco" id="endereco" class="form-control" required="" placeholder="Ex.: Rua das flores nº 337, Jd. rio - São paulo, SP">
                    </div>
                    <div class="form-group"> 
                        Data
                        </br>
                        <input type="date" name="data_atendimento" id="data_atendimento" class="form-control" required="" >
                    </div>
                    <div class="form-group"> 
                        Horário
                        </br>
                        <input type="time" name="horario" id="horario" class="form-control"  required="">
                    </div>
                     <div class="form-group"> 
                        Duração
                        </br>
                        <input type="time" name="duracao" id="duracao" class="form-control" >
                    </div>
                    <div class="form-group"> 
                        Descrição
                        </br>
                        <input type="text" name="descricao" id="descricao" class="form-control">
                    </div>
                   <div class="form-actions floatRight">
                    
                    <div  id="colaps" class="collapse"> 
                         
                        <button type="submit" class="btn btn-danger">Clique aqui para confirmar o Cadastro!</button>
                        <label><b>Clique no botão "Cadastrar" para encerrar a confirmação</b></label>
                        </br>
                    </div>
                    <div class="form-actions floatRight">
                        </br>
                        
                        <input type="button" value="Voltar" class="btn btn-primary" onClick="history.go(-1)"> 
                        <input type="button"  value="Cadastrar" data-toggle="collapse" data-target="#colaps"  class="btn btn-success">
                
                    </div>
                </div>
                </form>
            </div>
        </div>
        <script type="text/javascript">
                  $(function(){
                      $("#cpf_membro").mask("000.000.000-00");
                  });
        </script>
    
    </body>
</html>



