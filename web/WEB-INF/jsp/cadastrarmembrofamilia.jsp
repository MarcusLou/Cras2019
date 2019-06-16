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
                    <input type="hidden" name="familiaID" id="familiaID" class="form-control" value="1">
                    <input type="hidden" name="idFuncionario" id="idFuncionario" class="form-control" value="1">
                    <div class="form-group">                         
                        <label for="nome">Nome</label>                        
                        </br>
                        <input type="text" name="nome" id="nome" class="form-control" required="true" placeholder="Qual seu nome?" >
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome">?</button>
                        <div id="ajudaNome" class="collapse azulAjuda">
                            O nome completo...
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="funcao_familiar">Função Familiar</label> 
                        </br>
                        <select name="funcao_familiar" class="form-control" id="funcao_familiar"  required="true" >
                            <option value="" selected="">Escolha uma opção:</option>
                            <option value="Trabalha em tempo integral">Trabalha em tempo integral</option>
                            <option value="Trabalha em meio período">Trabalha em meio período</option>
                            <option value="Desempregado(a)">Desempregado(a)</option>
                            <option value="Trabalha em casa">Trabalha em casa</option>
                            <option value="Estudante">Estudante</option>
                            <option value="Estuda e trabalha">Estuda e trabalha</option>
                            <option value="Aposentada(a)">Aposentada(a)</option>
                            <option value="Menor">Menor</option>
                            <option value="Do lar">Do lar</option>
                        </select>
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaFuncao_familiar">?</button>
                        <div id="ajudaFuncao_familiar" class="collapse azulAjuda">
                            Diz respeito a ocupação de tempo que o membro da família tem. 
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="cpf">CPF</label>                          
                        </br>
                        <input type="text" name="cpf" id="cpf" class="form-control cpf"  placeholder="Qual o CPF, código de pessoa física, do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCPF">?</button>
                        <div id="ajudaCPF" class="collapse azulAjuda">
                            O CPF é o código de pessoa fisíca que pode ser adquirido junto ao banco do brasil, banco caixa economica, correios...
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="cadastro_unico">Cadastro Único</label>                          
                        </br>
                        <input type="text" name="cadastro_unico" id="cadastro_unico" class="form-control"  placeholder="Qual o CU, cadastro único, do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCadastro_unico">?</button>
                        <div id="ajudaCadastro_unico" class="collapse azulAjuda">
                            O Cadastro único pode ser obtido pelo site do governo federal, básico para atendimento aos beneficios.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="nis">NIS</label>                          
                        </br>
                        <input type="text" name="nis" id="nis" class="form-control nis"  placeholder="Qual o NIS, Número de Identificação Social, do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNis">?</button>
                        <div id="ajudaNis" class="collapse azulAjuda">
                            Para conseguir consultar o saldo das contas do FGTS, o trabalhador precisa ter em mãos o seu Número de Identificação Social (NIS), também chamado de PIS/PASEP ou NIT. Este número pode ser consultado nos extratos do FGTS enviados pela Caixa Econômica Federal, no Cartão Cidadão ou na própria carteira de trabalho.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="rg">RG</label>                          
                        </br>
                        <input type="text" name="rg" id="rg" class="form-control rg"  placeholder="Qual o RG, Registro Geral, do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaRg">?</button>
                        <div id="ajudaRg" class="collapse azulAjuda">
                            A cédula de identidade, carteira de identidade, identidade ou RG é o documento nacional de identificação civil no Brasil. Pode ser obtida no Polícia Militar.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="titulo">Título</label>                          
                        </br>
                        <input type="text" name="titulo" id="titulo" class="form-control titulo"  placeholder="Qual o título de eleitor do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTitulo">?</button>
                        <div id="ajudaTitulo" class="collapse azulAjuda">
                            Título de eleitor é o documento que comprova que um determinado cidadão está inscrito na Justiça Eleitoral do Brasil e se encontra apto a exercer tanto o eleitorado ativo (votar num candidato), quanto o eleitorado passivo (ser votado como candidato) em eleições municipais, estaduais e federais.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="telefone">Telefone</label> 
                        </br>
                        <input type="text" name="telefone" id="telefone " class="form-control phone"  placeholder="Qual o Número de Telefone do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTelefone">?</button>
                        <div id="ajudaTelefone" class="collapse azulAjuda">
                            Devemos preencher com um telefone para entrar em contato com o Membro da Família.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="celular">Celular</label> 
                        </br>
                        <input type="text" name="celular" id="celular " class="form-control phone"  placeholder="Qual o Número do Telefone Celular do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCelular">?</button>
                        <div id="ajudaCelular" class="collapse azulAjuda">
                            Devemos preencher com um telefone celular para entrar em contato com o membro da Família.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="relacao_familiar">Relação Familiar com o REsponsável</label> 
                        </br>
                        <select name="relacao_familiar" class="form-control" id="relacao_familiar"  required="true" >
                            <option value="" selected="">Escolha uma opção:</option>
                            <option value="Responsável">Responsável</option>
                            <option value="Esposo(a)">Esposo(a)</option>
                            <option value="Pai">Pai</option>
                            <option value="Mãe">Mãe</option>
                            <option value="Padastro">Padastro</option>
                            <option value="Madastra">Madastra</option>
                            <option value="Filho(a)">Filho(a)</option>
                            <option value="Tio(a)">Tio(a)</option>
                            <option value="Primo(a)">Primo(a)</option>
                            <option value="Sobrinho(a)">Sobrinho(a)</option>
                            <option value="Avô(ó)">Avô(ó)</option>
                            <option value="Outros">Outros</option>
                        </select>
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaRelacao_familiar">?</button>
                        <div id="ajudaRelacao_familiar" class="collapse azulAjuda">
                            Devemos preencher com o Relação Familiar que o Membro da Família tem com o Responsável.
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="cor_raca">Etnia</label>                          
                        </br>
                        <select name="cor_raca" class="form-control" id="cor_raca"  required="true" >
                            <option value="null" selected="">Escolha uma opção:</option>
                            <option value="Branco">Branco</option>
                            <option value="Amarelo">Amarelo</option>
                            <option value="Negro">Negro</option>
                            <option value="Parda">Parda</option>
                            <option value="Indígena">indígena</option>
                            <option value="Outro">Não encontrei minha etnia</option>
                        </select>
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCor_raca">?</button>
                        <div id="ajudaCor_raca" class="collapse azulAjuda">
                            Defini-se sua cor por se tratar da região/país em que se têm como origem da raça e ancestralidade.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="naturalidade">Naturalidade</label> 
                        </br>
                        <input type="text" name="naturalidade" id="naturalidade" class="form-control" placeholder="Qual a naturalidade, onde nasceu?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNaturalidade">?</button>
                        <div id="ajudaNaturalidade" class="collapse azulAjuda">
                            As expressões Local de nascimento, lugar de nascimento ou naturalidade indicam o local onde uma pessoa nasceu.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="nome_pai">Nome do Pai</label> 
                        </br>
                        <input type="text" name="nome_pai" id="nome_pai" class="form-control" placeholder="Qual o nome do Pai do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome_pai">?</button>
                        <div id="ajudaNome_pai" class="collapse azulAjuda">
                            Nome completo do pai.
                        </div> 
                    </div>   
                     <div class="form-group"> 
                        <label for="nome_pai">Nome da Mãe</label> 
                        </br>
                        <input type="text" name="nome_mae" id="nome_mae" class="form-control" placeholder="Qual o nome da Mãe do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome_mae">?</button>
                        <div id="ajudaNome_mae" class="collapse azulAjuda">
                            O Nome completo da Mãe. 
                        </div> 
                    </div>                    
                     <div class="form-group"> 
                        <label for="certidao_nascimento">Certidão de Nascimento</label> 
                        </br>
                        <input type="text" name="certidao_nascimento" id="certidao_nascimento" class="form-control" placeholder="Qual o número da matricula na certidão de nascimento do Membro da Família?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCertidao_nascimento">?</button>
                        <div id="ajudaCertidao_nascimento" class="collapse azulAjuda">
                            A certidão de nascimento é um documento cujo conteúdo é extraído do assento de nascimento lavrado em um livro depositado aos cuidados de um cartório de registo civil.
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="data_nascimento">Data de Nascimento</label> 
                        </br>
                        <input type="date" name="data_nascimento" id="data_nascimento" class="form-control" required="true">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData">?</button>
                        <div id="ajudaData" class="collapse azulAjuda">
                            Aqui devemos preencher o dia, mês e ano que o membro da Famíla nasceu.
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="sexo">Sexo</label> 
                        </br>
                        <select name="sexo" class="form-control" id="sexo" >
                            <option value="null" selected="">Escolha uma opção:</option>
                            <option value="Masculino">Masculino</option>
                            <option value="Feminino">Feminino</option>
                            <option value="Outros">Outros</option>
                        </select>
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaSexo">?</button>
                        <div id="ajudaSexo" class="collapse azulAjuda">
                            Escolha o sexo do membro da Família, sendo possível escolher outros para aquele(a) que não se identifica ou não quer informar.
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
                $('.titulo').mask('0000 0000 0000 00');
                $('.rg').mask('000.000.000-0');
                $('.nis').mask('000.00000.00-0');
            });
        </script>
</html>



