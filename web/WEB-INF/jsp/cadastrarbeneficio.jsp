<%-- 
    Document   : cadastrarBeneficio
    Created on : 05/06/2019, 13:16:18
    Author     : Marcus
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <script src="resources/js/maskMoney.js" type="text/javascript"></script>
        <script src="resources/js/jquery.mask.js" type="text/javascript"></script>
        <title>Cadastro de Benefícios</title>
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
                    <h1 class="black text-center">Cadastre seu benefício aqui!</h1>
                </div>
                <div class="col-2">
                    <h1 class="black">&nbsp;</h1>
                </div>
            </div>
            </br>
            <form action="cadastrarBeneficio" method="POST" >
                <input type="hidden" name="familiaID" id="familiaID" class="form-control" value="1">
                <input type="hidden" name="idFuncionario" id="idFuncionario" class="form-control" value="1">
                <div class="form-group">   
                    <div class="row form-group">    
                        <div class="col-8">
                            <label for="nome">
                                Nome do Benefício
                            </label>
                        </div>
                        <div class="col">
                            <label for="numero_guia">
                                Número da Guia
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col-8">
                            <input type="text" name="nome" id="nome" class="form-control" required="true" placeholder="Qual o nome do Benefício?" >
                            <button  style="font-size:14px" type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome">?</button>
                            <div id="ajudaNome" class="collapse azulAjuda">
                                O nome do Benefício é dado pelo Governo Federal, por exemplo: Bolsa-Família, Bolsa-Gás, etc...
                            </div>
                        </div>
                        <div class="col">
                            <input type="number" name="numero_guia" id="numero_guia" class="form-control" required="true" pattern="[0-9]+$" placeholder="Número da Guia de Solicitação do Benefício">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNumero_guia">?</button>
                            <div id="ajudaNumero_guia" class="collapse azulAjuda">
                                O número da Guia do Benefício é encontrado no sistema do Governo Federal ao solicitar o Benefício.
                            </div> 
                        </div>
                    </div> 
                    <div class="row form-group">    
                        <div class="col">
                            <label for="valor">
                                Valor
                            </label>
                        </div>
                        <div class="col">
                            <label for="data_inicio">
                                Data de Início
                            </label>
                        </div>
                        <div class="col">
                            <label for="data_renovacao">
                                Data de Renovação
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <input type="text" name="valor" id="valor" class="form-control valor" required="true" data-thousands="." data-decimal="," data-prefix="R$" placeholder="Qual o valor do Benefício?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaValor">?</button>
                            <div id="ajudaValor" class="collapse azulAjuda">
                                O Valor é o quanto uma família receberá no Benefício. Ele se encontra no Documento da Guia do Benefício.
                            </div>
                        </div>
                        <div class="col">
                            <input type="date" name="data_inicio" id="data_inicio" class="form-control" required="true">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData_inicio">?</button>
                            <div id="ajudaData_inicio" class="collapse azulAjuda">
                                Aqui devemos preencher o dia, mês e ano que a Famíla beneficiada começou a receber o benefício, data que se encontra na Guia.
                            </div>
                        </div>
                        <div class="col">
                            <input type="date" name="data_renovacao" id="data_renovacao" class="form-control" required="true">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData_renovacao">?</button>
                            <div id="ajudaData_renovacao" class="collapse azulAjuda">
                                Devemos preencher o dia, mês e ano que a Famíla beneficiada precisará solicitar novamente o benefício, sendo que deverá comprovar documentos e situação que permita receber o Benefício.
                            </div> 
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <label for="justificativa">
                                Justificativa
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <textarea rows="2" name="justificativa" id="justificativa" class="form-control"  required="true" placeholder="Digite uma breve justiicativa para se ter o Benefício..."></textarea>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaJustificativa">?</button>
                            <div id="ajudaJustificativa" class="collapse azulAjuda">
                                Sendo breve, deve-se preencher uma justificativa, mesmo que não haja (e isto deve ser escrito como ciente de não haver justificativa), do porque a família precisa deste benefício, como uma situação de carência ou vulnerabilidade. 
                            </div> 
                        </div>
                    </div>
                    <div class="row form-group"> 
                        <div class="col text-center">
                            <input type="submit" id="submit" class="btn btn-primary" value="Cadastrar">
                            <input type="button" value="Cancelar" class="btn btn-warning" onClick="history.go(-1)"> 
                        </div>
                    </div>
                </div>
            </form>
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
                $('.mixed').mask('AAA 000-S0S');
            });
            $(function(){
                $("#valor").maskMoney();
            });
        </script>
    </body>
</html>



