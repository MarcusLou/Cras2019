<%-- 
    Document   : cadastrarFamilia
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
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <script src="resources/js/maskMoney.js" type="text/javascript"></script>
        <script src="resources/js/jquery.mask.js" type="text/javascript"></script>
        <title>Cadastro de Família</title>
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
                    <h1 class="black text-center">Cadastre a família aqui!</h1>
                </div>
                <div class="col-2">
                    <h1 class="black">&nbsp;</h1>
                </div>
            </div>
            </br>
            <form action="cadastrarFamilia" method="POST" >
                <input type="hidden" name="cod_cras" id="cod_cras" class="form-control" value="1">
                <input type="hidden" name="idFuncionario" id="idFuncionario" class="form-control" value="1">
                <div class="form-group"> 
                    <div class="row form-group">    
                        <div class="col-8">
                            <label for="responsavel_familiar">
                                Nome do Responsável da Família
                            </label>
                        </div>
                        <div class="col-2">
                            <label for="telefone_fixo">
                                Telefone
                            </label>
                        </div>
                        <div class="col-2">
                            <label for="cep">
                                CEP
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col-8">
                            <input type="text" name="responsavel_familiar" id="responsavel_familiar" class="form-control" required="true" placeholder="Qual o responsável da Família?" >
                            <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaResponsavel_familiar">?</button>
                            <div id="ajudaResponsavel_familiar" class="collapse azulAjuda">
                                O nome responsável da Família é a pessoal que se responsabiliza por prestar informações da Família...
                            </div> 
                        </div>
                        <div class="col-2">
                            <input type="text" name="telefone_fixo" id="telefone_fixo " class="form-control phone"  placeholder="Telefone Principal">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTelefone_fixo">?</button>
                            <div id="ajudaTelefone_fixo" class="collapse azulAjuda">
                                Devemos preencher com um telefone principal para entrar em contato com o Responsável ou qualquer membro da Família.
                            </div> 
                        </div>
                        <div class="col-2">
                            <input type="text" name="cep" id="cep" class="form-control cep"  placeholder="CEP">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaCep">?</button>
                            <a  class="btn btn-outline-info float-right buttonFont10" href="http://www.buscacep.correios.com.br/sistemas/buscacep/buscaCepEndereco.cfm"  target="_blank">Pesquisar</a>
                            <div id="ajudaCep" class="collapse azulAjuda">
                                O CEP pode ser obtido pelo site dos Corrêios: www.correios.com.br.
                            </div> 
                        </div>
                    </div> 
                    <div class="row form-group">    
                        <div class="col">
                            <label for="endereco">
                                Endereço
                            </label>
                        </div>
                        <div class="col">
                            <label for="observacoes">
                                Observações
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <textarea rows="1" name="endereco" id="endereco" class="form-control"  required="true" placeholder="Digite o endereço da Família..."></textarea>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaEndereco">?</button>
                            <div id="ajudaEndereco" class="collapse azulAjuda">
                                O Endereço pode ser uma rua, avenida, ruela ou estrada, por exemplo. Deve conter todos os dados, assim como bairro. A cidade e Estado não é importante pois a Unidade do Cras nunca atende fora da região local. 
                            </div> 
                        </div>
                        <div class="col">
                            <textarea rows="1" name="observacoes" id="observacoes" class="form-control"  required="true" placeholder="Digite observações sobre Família:"></textarea>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaObservacoes">?</button>
                            <div id="ajudaObservacoes" class="collapse azulAjuda">
                                As observações devem ser sucintas, pertinentes a Família como um todo, relatando problemas que possam ser pertinete a todos. 
                            </div> 
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <label for="tipo_moradia">
                                Tipo de Moradia
                            </label>
                        </div>
                        <div class="col">
                            <label for="comodos_moradia">
                                Cômodos da Moradia
                            </label>
                        </div>
                        <div class="col">
                            <label for="condicoes_moradia">
                                Condições da Moradia
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <select name="tipo_moradia" class="form-control" id="tipo_moradia" >
                                <option value="" selected="">Escolha uma opção:</option>
                                <option value="Própria">Própria</option>
                                <option value="Alugada">Alugada</option>
                                <option value="Cedida">Cedida</option>
                                <option value="Morador Rua">Morador de rua</option>
                                <option value="Outros">Outros</option>
                            </select>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTipo_moradia">?</button>
                            <div id="ajudaTipo_moradia" class="collapse azulAjuda">
                                Devemos preencher com o tipo de moradia que a Família tem, como exemplo própria, alugada, cedida, morador de rua, etc...Caso seja outros, descrever em observações.
                            </div> 
                        </div>
                        <div class="col">
                            <select name="comodos_moradia" class="form-control" id="comodos_moradia" >
                                <option value="null" selected="">Escolha uma opção:</option>
                                <option value="0">nenhum</option>
                                <option value="1">Um Cômodo</option>
                                <option value="2">Dois Cômodos</option>
                                <option value="3">Três Cômodos</option>
                                <option value="4">Quatro Cômodos</option>
                                <option value="5">Cinco Cômodos</option>
                                <option value="6">Seis Cômodos</option>
                                <option value="7">Sete Cômodos</option>
                                <option value="8">Oito ou mais Cômodos</option>
                            </select>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaComodos_moradia">?</button>
                            <div id="ajudaComodos_moradia" class="collapse azulAjuda">
                                O(s) cômodo(s) na moradia é a quantidade de partições que a casa tem onde reside a Família, sendo contado quartos, sala, cozinha, quartos, edicula, etc...
                            </div> 
                        </div>
                        <div class="col">
                            <input type="text" name="condicoes_moradia" id="condicoes_moradia" class="form-control" placeholder="Qual a condição da moradia?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCondicoes_moradia">?</button>
                            <div id="ajudaCondicoes_moradia" class="collapse azulAjuda">
                                A condição da moradia consiste no aspecto visual, se há condição de vivência de forma saudável, com higiêne e qualidade de vida.
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <label for="situacao_familiar">
                                Situação Familiar
                            </label>
                        </div>
                        <div class="col">
                            <label for="renda_familiar">
                                Renda Familiar
                            </label>
                        </div>
                        <div class="col">
                            <label for="dataCad">
                                Data de Cadastro
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <input type="text" name="situacao_familiar" id="situacao_familiar" class="form-control" required="true" placeholder="Qual a situação da Família?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaSituacao_familiar">?</button>
                            <div id="ajudaSituacao_familiar" class="collapse azulAjuda">
                                A Situação Familiar é a informação atual em que a Família se encontra, sendo no estado mais vulneravél ao estável.
                            </div> 
                        </div>
                        <div class="col">
                            <input type="text" name="renda_familiar" id="renda_familiar" class="form-control renda_familiar"  data-thousands="." data-decimal="," data-prefix="R$" placeholder="Qual a renda da Família?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaRenda_familiar">?</button>
                            <div id="ajudaRenda_familiar" class="collapse azulAjuda">
                                A Renda Familiar é a informação do valor bruto em que a Família recebe mensalmente, sendo qualquer renda contabilizada.
                            </div>
                        </div>
                        <div class="col">
                            <input type="date" name="dataCad" id="dataCad" class="form-control" required="true">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData">?</button>
                            <div id="ajudaData" class="collapse azulAjuda">
                                Aqui devemos preencher o dia, mês e ano que a Famíla começou a ser atendida pelo CRAS.
                            </div> 
                        </div>
                    </div>
                    <div class="row form-group"> 
                        <div class="col text-center">
                            <input type="submit" id="submit" class="btn btn-primary" value="Cadastrar">
                            <input type="button" value="Cancelar" class="btn btn-danger" onClick="history.go(-1)"> 
                        </div>
                    </div>
                </form>
            </div>
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
            });
            $(function(){
                $("#renda_familiar").maskMoney();
            });
        </script>
    </body>
</html>



