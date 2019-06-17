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
        <title>Cadastro de Benef�cios</title>
    </head>
    <body>
        <div class="container">             
            <div class="row">
                <div class="col-2">
                    <button style="font-size:24px" class="btn btn-sm btn-light" onClick="history.go(-1)" title="Voltar a p�gina anterior!">
                        <i class="material-icons">undo</i>Voltar
                    </button>
                </div>
                <div class="col">
                    <h1 class="black text-center">Cadastre seu benef�cio aqui!</h1>
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
                                Nome do Benef�cio
                            </label>
                        </div>
                        <div class="col">
                            <label for="numero_guia">
                                N�mero da Guia
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col-8">
                            <input type="text" name="nome" id="nome" class="form-control" required="true" placeholder="Qual o nome do Benef�cio?" >
                            <button  style="font-size:14px" type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome">?</button>
                            <div id="ajudaNome" class="collapse azulAjuda">
                                O nome do Benef�cio � dado pelo Governo Federal, por exemplo: Bolsa-Fam�lia, Bolsa-G�s, etc...
                            </div>
                        </div>
                        <div class="col">
                            <input type="number" name="numero_guia" id="numero_guia" class="form-control" required="true" pattern="[0-9]+$" placeholder="N�mero da Guia de Solicita��o do Benef�cio">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNumero_guia">?</button>
                            <div id="ajudaNumero_guia" class="collapse azulAjuda">
                                O n�mero da Guia do Benef�cio � encontrado no sistema do Governo Federal ao solicitar o Benef�cio.
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
                                Data de In�cio
                            </label>
                        </div>
                        <div class="col">
                            <label for="data_renovacao">
                                Data de Renova��o
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <input type="text" name="valor" id="valor" class="form-control valor" required="true" data-thousands="." data-decimal="," data-prefix="R$" placeholder="Qual o valor do Benef�cio?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaValor">?</button>
                            <div id="ajudaValor" class="collapse azulAjuda">
                                O Valor � o quanto uma fam�lia receber� no Benef�cio. Ele se encontra no Documento da Guia do Benef�cio.
                            </div>
                        </div>
                        <div class="col">
                            <input type="date" name="data_inicio" id="data_inicio" class="form-control" required="true">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData_inicio">?</button>
                            <div id="ajudaData_inicio" class="collapse azulAjuda">
                                Aqui devemos preencher o dia, m�s e ano que a Fam�la beneficiada come�ou a receber o benef�cio, data que se encontra na Guia.
                            </div>
                        </div>
                        <div class="col">
                            <input type="date" name="data_renovacao" id="data_renovacao" class="form-control" required="true">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData_renovacao">?</button>
                            <div id="ajudaData_renovacao" class="collapse azulAjuda">
                                Devemos preencher o dia, m�s e ano que a Fam�la beneficiada precisar� solicitar novamente o benef�cio, sendo que dever� comprovar documentos e situa��o que permita receber o Benef�cio.
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
                            <textarea rows="2" name="justificativa" id="justificativa" class="form-control"  required="true" placeholder="Digite uma breve justiicativa para se ter o Benef�cio..."></textarea>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaJustificativa">?</button>
                            <div id="ajudaJustificativa" class="collapse azulAjuda">
                                Sendo breve, deve-se preencher uma justificativa, mesmo que n�o haja (e isto deve ser escrito como ciente de n�o haver justificativa), do porque a fam�lia precisa deste benef�cio, como uma situa��o de car�ncia ou vulnerabilidade. 
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



