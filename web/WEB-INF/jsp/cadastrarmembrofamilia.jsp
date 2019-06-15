<%-- 
    Document   : cadastrarmembrofamilia
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
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
        <script src="resources/js/maskMoney.js" type="text/javascript"></script>
        <script src="resources/js/jquery.mask.js" type="text/javascript"></script>
        <title>Cadastro de Membros da Família</title>
    </head>
    <body>
        <div class="container"> 
            <div class="col-md-6 cadastro">
            <h1>Cadastre a família aqui!</h1>
            <div> 
                <form action="cadastrarMembroFamilia" method="POST" >
                    <input type="hidden" name="cod_cras" id="cod_cras" class="form-control" value="1">
                    <input type="hidden" name="familiaID" id="familiaID" class="form-control" value="1">
                    <input type="hidden" name="idFuncionario" id="idFuncionario" class="form-control" value="1">
                    <div class="form-group">                         
                        <label for="nome">Nome</label>                        
                        </br>
                        <input type="text" name="nome" id="nome" class="form-control" required="" placeholder="Qual seu nome?" >
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome">?</button>
                        <div id="ajudaNome" class="collapse azulAjuda">
                            O nome completo...
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="funcao_familiar">Função Familiar</label> 
                        </br>
                        <input  name="funcao_familiar" id="funcao_familiar" class="form-control"  required="" placeholder="Digite o endereço do Membro da Família...">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaFuncao_familiar">?</button>
                        <div id="ajudaFuncao_familiar" class="collapse azulAjuda">
                            O Endereço pode ser uma rua, avenida, ruela ou estrada, por exemplo. Deve conter todos os dados, assim como bairro. A cidade e Estado não é importante pois a Unidade do Cras nunca atende fora da região local. 
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="cpf">CPF</label>                          
                        </br>
                        <input type="text" name="cpf" id="cpf" class="form-control cpf"  placeholder="Qual o CEP, código de endereçamento postal, do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCPF">?</button>
                        <div id="ajudaCPF" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corrêios: www.correios.com.br.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="cadastro_unico">Cadastro Único</label>                          
                        </br>
                        <input type="text" name="cadastro_unico" id="cadastro_unico" class="form-control"  placeholder="Qual o CEP, código de endereçamento postal, do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCadastro_unico">?</button>
                        <div id="ajudaCadastro_unico" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corrêios: www.correios.com.br.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="nis">NIS</label>                          
                        </br>
                        <input type="text" name="nis" id="nis" class="form-control"  placeholder="Qual o CEP, código de endereçamento postal, do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNis">?</button>
                        <div id="ajudaNis" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corrêios: www.correios.com.br.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="rg">RG</label>                          
                        </br>
                        <input type="text" name="rg" id="rg" class="form-control"  placeholder="Qual o CEP, código de endereçamento postal, do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaRg">?</button>
                        <div id="ajudaRg" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corrêios: www.correios.com.br.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="titulo">Título</label>                          
                        </br>
                        <input type="text" name="titulo" id="titulo" class="form-control"  placeholder="Qual o CEP, código de endereçamento postal, do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTitulo">?</button>
                        <div id="ajudaTitulo" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corrêios: www.correios.com.br.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="telefone">Telefone</label> 
                        </br>
                        <input type="text" name="telefone" id="telefone " class="form-control phone"  placeholder="Qual o Número de Telefone Principal do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTelefone">?</button>
                        <div id="ajudaTelefone" class="collapse azulAjuda">
                            Devemos preencher com um telefone principal para entrar em contato com o Responsável ou qualquer membro do Membro da Família.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="celular">Celular</label> 
                        </br>
                        <input type="text" name="celular" id="celular " class="form-control phone"  placeholder="Qual o Número de Telefone Principal do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCelular">?</button>
                        <div id="ajudaCelular" class="collapse azulAjuda">
                            Devemos preencher com um telefone principal para entrar em contato com o Responsável ou qualquer membro do Membro da Família.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="relacao_familiar">Relação Familiar</label> 
                        </br>
                        <select name="relacao_familiar" class="form-control" id="relacao_familiar" >
                            <option value="" selected="">Escolha uma opção:</option>
                            <option value="Própria">Própria</option>
                            <option value="Alugada">Alugada</option>
                            <option value="Cedida">Cedida</option>
                            <option value="Morador Rua">Morador de rua</option>
                            <option value="Outros">Outros</option>
                        </select>
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaRelacao_familiar">?</button>
                        <div id="ajudaRelacao_familiar" class="collapse azulAjuda">
                            Devemos preencher com o Relação Familiar que o Membro da Família tem, como exemplo própria, alugada, cedida, morador de rua, etc...Caso seja outros, descrever em observações.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="cor_raca">Cor/Raça</label>                          
                        </br>
                        <select name="cor_raca" class="form-control" id="cor_raca" >
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
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCor_raca">?</button>
                        <div id="ajudaCor_raca" class="collapse azulAjuda">
                            O(s) cômodo(s) na moradia é a quantidade de partições que a casa tem onde reside o Membro da Família, sendo contado quartos, sala, cozinha, quartos, edicula, etc...
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="naturalidade">Naturalidade</label> 
                        </br>
                        <input type="text" name="naturalidade" id="naturalidade" class="form-control" placeholder="Qual a condição da moradia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNaturalidade">?</button>
                        <div id="ajudaNaturalidade" class="collapse azulAjuda">
                            A condição da moradia consiste no aspecto visual, se há condição de vivência de forma saudável, com higiêne e qualidade de vida.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="nome_pai">Nome do Pai</label> 
                        </br>
                        <input type="text" name="nome_pai" id="nome_pai" class="form-control" required="" placeholder="Qual a situação do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome_pai">?</button>
                        <div id="ajudaNome_pai" class="collapse azulAjuda">
                            A Situação Familiar é a informação atual em que o Membro da Família se encontra, sendo no estado mais vulneravél ao estável.
                        </div> 
                    </div>   
                     <div class="form-group"> 
                        <label for="nome_pai">Nome da Mãe</label> 
                        </br>
                        <input type="text" name="nome_mae" id="nome_mae" class="form-control" required="" placeholder="Qual a situação do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome_mae">?</button>
                        <div id="ajudaNome_mae" class="collapse azulAjuda">
                            A Situação Familiar é a informação atual em que o Membro da Família se encontra, sendo no estado mais vulneravél ao estável.
                        </div> 
                    </div>                    
                     <div class="form-group"> 
                        <label for="certidao_nascimento">Certidão de Nascimento</label> 
                        </br>
                        <input type="text" name="certidao_nascimento" id="certidao_nascimento" class="form-control"  data-thousands="." data-decimal="," data-prefix="R$" placeholder="Qual a renda do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCertidao_nascimento">?</button>
                        <div id="ajudaCertidao_nascimento" class="collapse azulAjuda">
                            A Renda Familiar é a informação do valor bruto em que o Membro da Família recebe mensalmente, sendo qualquer renda contabilizada.
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="data_nascimento">Data de Nascimento</label> 
                        </br>
                        <input type="date" name="data_nascimento" id="data_nascimento" class="form-control" required="">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData">?</button>
                        <div id="ajudaData" class="collapse azulAjuda">
                            Aqui devemos preencher o dia, mês e ano que a Famíla começou a ser atendida pelo CRAS.
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="sexo">Sexo</label> 
                        </br>
                        <input name="sexo" id="sexo" class="form-control"  required="" placeholder="Digite observações sobre Membro da Família:">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaSexo">?</button>
                        <div id="ajudaSexo" class="collapse azulAjuda">
                            As observações devem ser sucintas, pertinentes ao Membro da Família como um todo, relatando problemas que possam ser pertinete a todos. 
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <input type="submit" id="submit" class="btn btn-primary" value="Cadastrar">
                        <input type="button" value="Cancelar" class="btn btn-danger" onClick="history.go(-1)"> 
                    </div>
                </form>
            </div>
        </div>
    </body>
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
</html>



