<%-- 
    Document   : cadastrarBeneficio
    Created on : 05/06/2019, 13:16:18
    Author     : Marcus
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- mapear boot por tags -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <script src="resources/js/maskMoney.js" type="text/javascript"></script>
        <script src="resources/js/jquery.mask.js" type="text/javascript"></script>
        <title>Cadastro de Benefícios</title>
    </head>
    <body>
        <div class="container"> 
            <div class="col-md-6 cadastro">
            <h1>Cadastre seu benefício aqui!</h1>
            <div> 
                <form action="cadastrarBeneficio" method="POST" >
                    <input type="hidden" name="cod_cras" id="cod_cras" class="form-control" value="1">
                    <input type="hidden" name="familiaID" id="familiaID" class="form-control" value="1">
                    <input type="hidden" name="idFuncionario" id="idFuncionario" class="form-control" value="1">
                    <div class="form-group">                         
                        <label for="nome">Nome do Benefício</label>                        
                        </br>
                        <input type="text" name="nome" id="nome" class="form-control" required="" placeholder="Qual o nome do Benefício?" >
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome">?</button>
                        <div id="ajudaNome" class="collapse azulAjuda">
                            O nome do Benefício é dado pelo Governo Federal, por exemplo: Bolsa-Família, Bolsa-Gás, etc...
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="numero_guia">Número da Guia</label>                          
                        </br>
                        <input type="number" name="numero_guia" id="numero_guia" class="form-control" required="" placeholder="Qual o número do Documento: Guia de Solicitação do Benefício?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNumero_guia">?</button>
                        <div id="ajudaNumero_guia" class="collapse azulAjuda">
                            O número da Guia do Benefício é encontrado no sistema do Governo Federal ao solicitar o Benefício.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="valor">Valor</label> 
                        </br>
                        <input type="text" name="valor" id="valor" class="form-control valor" required="" data-thousands="." data-decimal="," data-prefix="R$" placeholder="Qual o valor do Benefício?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaValor">?</button>
                        <div id="ajudaValor" class="collapse azulAjuda">
                            O Valor é o quanto uma família receberá no Benefício. Ele se encontra no Documento da Guia do Benefício.
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="data_inicio">Data de Início</label> 
                        </br>
                        <input type="date" name="data_inicio" id="data_inicio" class="form-control" required="">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData_inicio">?</button>
                        <div id="ajudaData_inicio" class="collapse azulAjuda">
                            Aqui devemos preencher o dia, mês e ano que a Famíla beneficiada começou a receber o benefício, data que se encontra na Guia.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="data_renovacao">Data de Renovação </label> 
                        </br>
                        <input type="date" name="data_renovacao" id="data_renovacao" class="form-control" required="">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData_renovacao">?</button>
                        <div id="ajudaData_renovacao" class="collapse azulAjuda">
                            Devemos preencher o dia, mês e ano que a Famíla beneficiada precisará solicitar novamente o benefício, sendo que deverá comprovar documentos e situação que permita receber o Benefício.
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="justificativa">Justificativa</label> 
                        </br>
                        <textarea rows="4" name="justificativa" id="justificativa" class="form-control"  required="" placeholder="Digite uma breve justiicativa para se ter o Benefício..."></textarea>
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaJustificativa">?</button>
                        <div id="ajudaJustificativa" class="collapse azulAjuda">
                            Sendo breve, deve-se preencher uma justificativa, mesmo que não haja (e isto deve ser escrito como ciente de não haver justificativa), do porque a família precisa deste benefício, como uma situação de carência ou vulnerabilidade. 
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <input type="submit" id="submit" class="btn btn-primary" value="Cadastrar">
                    </div>
                </form>
            </div>
        </div>
        <script type="text/javascript">
            $(function(){
                $("#valor").maskMoney();
            });
        </script>
    </body>
</html>



