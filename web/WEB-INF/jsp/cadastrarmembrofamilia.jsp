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
        <title>Cadastro de Membros da Fam�lia</title>
    </head>
    <body>
        <div class="container"> 
            <div class="col-md-6 cadastro">
            <h1>Cadastre a fam�lia aqui!</h1>
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
                        <label for="funcao_familiar">Fun��o Familiar</label> 
                        </br>
                        <input  name="funcao_familiar" id="funcao_familiar" class="form-control"  required="" placeholder="Digite o endere�o do Membro da Fam�lia...">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaFuncao_familiar">?</button>
                        <div id="ajudaFuncao_familiar" class="collapse azulAjuda">
                            O Endere�o pode ser uma rua, avenida, ruela ou estrada, por exemplo. Deve conter todos os dados, assim como bairro. A cidade e Estado n�o � importante pois a Unidade do Cras nunca atende fora da regi�o local. 
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="cpf">CPF</label>                          
                        </br>
                        <input type="text" name="cpf" id="cpf" class="form-control cpf"  placeholder="Qual o CEP, c�digo de endere�amento postal, do Membro da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCPF">?</button>
                        <div id="ajudaCPF" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corr�ios: www.correios.com.br.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="cadastro_unico">Cadastro �nico</label>                          
                        </br>
                        <input type="text" name="cadastro_unico" id="cadastro_unico" class="form-control"  placeholder="Qual o CEP, c�digo de endere�amento postal, do Membro da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCadastro_unico">?</button>
                        <div id="ajudaCadastro_unico" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corr�ios: www.correios.com.br.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="nis">NIS</label>                          
                        </br>
                        <input type="text" name="nis" id="nis" class="form-control"  placeholder="Qual o CEP, c�digo de endere�amento postal, do Membro da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNis">?</button>
                        <div id="ajudaNis" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corr�ios: www.correios.com.br.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="rg">RG</label>                          
                        </br>
                        <input type="text" name="rg" id="rg" class="form-control"  placeholder="Qual o CEP, c�digo de endere�amento postal, do Membro da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaRg">?</button>
                        <div id="ajudaRg" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corr�ios: www.correios.com.br.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="titulo">T�tulo</label>                          
                        </br>
                        <input type="text" name="titulo" id="titulo" class="form-control"  placeholder="Qual o CEP, c�digo de endere�amento postal, do Membro da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTitulo">?</button>
                        <div id="ajudaTitulo" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corr�ios: www.correios.com.br.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="telefone">Telefone</label> 
                        </br>
                        <input type="text" name="telefone" id="telefone " class="form-control phone"  placeholder="Qual o N�mero de Telefone Principal do Membro da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTelefone">?</button>
                        <div id="ajudaTelefone" class="collapse azulAjuda">
                            Devemos preencher com um telefone principal para entrar em contato com o Respons�vel ou qualquer membro do Membro da Fam�lia.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="celular">Celular</label> 
                        </br>
                        <input type="text" name="celular" id="celular " class="form-control phone"  placeholder="Qual o N�mero de Telefone Principal do Membro da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCelular">?</button>
                        <div id="ajudaCelular" class="collapse azulAjuda">
                            Devemos preencher com um telefone principal para entrar em contato com o Respons�vel ou qualquer membro do Membro da Fam�lia.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="relacao_familiar">Rela��o Familiar</label> 
                        </br>
                        <select name="relacao_familiar" class="form-control" id="relacao_familiar" >
                            <option value="" selected="">Escolha uma op��o:</option>
                            <option value="Pr�pria">Pr�pria</option>
                            <option value="Alugada">Alugada</option>
                            <option value="Cedida">Cedida</option>
                            <option value="Morador Rua">Morador de rua</option>
                            <option value="Outros">Outros</option>
                        </select>
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaRelacao_familiar">?</button>
                        <div id="ajudaRelacao_familiar" class="collapse azulAjuda">
                            Devemos preencher com o Rela��o Familiar que o Membro da Fam�lia tem, como exemplo pr�pria, alugada, cedida, morador de rua, etc...Caso seja outros, descrever em observa��es.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="cor_raca">Cor/Ra�a</label>                          
                        </br>
                        <select name="cor_raca" class="form-control" id="cor_raca" >
                            <option value="null" selected="">Escolha uma op��o:</option>
                            <option value="0">nenhum</option>
                            <option value="1">Um C�modo</option>
                            <option value="2">Dois C�modos</option>
                            <option value="3">Tr�s C�modos</option>
                            <option value="4">Quatro C�modos</option>
                            <option value="5">Cinco C�modos</option>
                            <option value="6">Seis C�modos</option>
                            <option value="7">Sete C�modos</option>
                            <option value="8">Oito ou mais C�modos</option>
                        </select>
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCor_raca">?</button>
                        <div id="ajudaCor_raca" class="collapse azulAjuda">
                            O(s) c�modo(s) na moradia � a quantidade de parti��es que a casa tem onde reside o Membro da Fam�lia, sendo contado quartos, sala, cozinha, quartos, edicula, etc...
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="naturalidade">Naturalidade</label> 
                        </br>
                        <input type="text" name="naturalidade" id="naturalidade" class="form-control" placeholder="Qual a condi��o da moradia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNaturalidade">?</button>
                        <div id="ajudaNaturalidade" class="collapse azulAjuda">
                            A condi��o da moradia consiste no aspecto visual, se h� condi��o de viv�ncia de forma saud�vel, com higi�ne e qualidade de vida.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="nome_pai">Nome do Pai</label> 
                        </br>
                        <input type="text" name="nome_pai" id="nome_pai" class="form-control" required="" placeholder="Qual a situa��o do Membro da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome_pai">?</button>
                        <div id="ajudaNome_pai" class="collapse azulAjuda">
                            A Situa��o Familiar � a informa��o atual em que o Membro da Fam�lia se encontra, sendo no estado mais vulnerav�l ao est�vel.
                        </div> 
                    </div>   
                     <div class="form-group"> 
                        <label for="nome_pai">Nome da M�e</label> 
                        </br>
                        <input type="text" name="nome_mae" id="nome_mae" class="form-control" required="" placeholder="Qual a situa��o do Membro da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome_mae">?</button>
                        <div id="ajudaNome_mae" class="collapse azulAjuda">
                            A Situa��o Familiar � a informa��o atual em que o Membro da Fam�lia se encontra, sendo no estado mais vulnerav�l ao est�vel.
                        </div> 
                    </div>                    
                     <div class="form-group"> 
                        <label for="certidao_nascimento">Certid�o de Nascimento</label> 
                        </br>
                        <input type="text" name="certidao_nascimento" id="certidao_nascimento" class="form-control"  data-thousands="." data-decimal="," data-prefix="R$" placeholder="Qual a renda do Membro da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCertidao_nascimento">?</button>
                        <div id="ajudaCertidao_nascimento" class="collapse azulAjuda">
                            A Renda Familiar � a informa��o do valor bruto em que o Membro da Fam�lia recebe mensalmente, sendo qualquer renda contabilizada.
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="data_nascimento">Data de Nascimento</label> 
                        </br>
                        <input type="date" name="data_nascimento" id="data_nascimento" class="form-control" required="">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData">?</button>
                        <div id="ajudaData" class="collapse azulAjuda">
                            Aqui devemos preencher o dia, m�s e ano que a Fam�la come�ou a ser atendida pelo CRAS.
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="sexo">Sexo</label> 
                        </br>
                        <input name="sexo" id="sexo" class="form-control"  required="" placeholder="Digite observa��es sobre Membro da Fam�lia:">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaSexo">?</button>
                        <div id="ajudaSexo" class="collapse azulAjuda">
                            As observa��es devem ser sucintas, pertinentes ao Membro da Fam�lia como um todo, relatando problemas que possam ser pertinete a todos. 
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



