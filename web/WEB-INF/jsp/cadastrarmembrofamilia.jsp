<%-- 
    Document   : cadastrarmembrofamilia
    Created on : 05/06/2019, 13:16:18
    Author     : Marcus
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        <title>Cadastro de Membros da Fam�lia</title>
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
                    <h1 class="black text-center">Cadastre o Membro da Fam�lia aqui!</h1>
                </div>
                <div class="col-2">
                    <h1 class="black">&nbsp;</h1>
                </div>
            </div>
            </br>
            <form action="cadastrarMembroFamilia" method="POST" >
                <input type="hidden" name="familiaID" id="familiaID" class="form-control" value="1">
                <input type="hidden" name="idFuncionario" id="idFuncionario" class="form-control" value="1">
                <div class="form-group"> 
                    <div class="row form-group textoAzul">    
                        <div class="col-8">
                            <label for="nome">
                                Nome Completo
                            </label>
                        </div>
                        <div class="col-2">
                            <label for="telefone">
                                Telefone
                            </label>
                        </div>
                        <div class="col-2">
                            <label for="celular">
                                Celular
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col-8">
                            <input type="text" name="nome" id="nome" class="form-control" required="true" placeholder="Qual o nome?" >
                            <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaNome">?</button>
                            <div id="ajudaNome" class="collapse azulAjuda">
                                O nome do membro Fam�lia � a gra�a dada pelos pais...
                            </div> 
                        </div>
                        <div class="col-2">
                            <input type="text" name="telefone" id="telefone " class="form-control phone"  placeholder="Qual o Telefone?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTelefone">?</button>
                            <div id="ajudaTelefone" class="collapse azulAjuda">
                                Devemos preencher com um telefone para entrar em contato com o Membro da Fam�lia.
                            </div> 
                        </div>
                        <div class="col-2">
                            <input type="text" name="celular" id="celular" class="form-control phone"  placeholder="Qual o Celular?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaCelular">?</button>
                            <div id="ajudaCelular" class="collapse azulAjuda">
                                Devemos preencher com um telefone celular para entrar em contato com o membro da Fam�lia.
                            </div> 
                        </div>
                    </div> 
                    <div class="row form-group textoAzul">    
                        <div class="col">
                            <label for="data_nascimento">
                                Data de Nascimento
                            </label>
                        </div>
                        <div class="col">
                            <label for="sexo">
                                Sexo
                            </label>
                        </div>
                        <div class="col">
                            <label for="cor_raca">
                                Etnia
                            </label>
                        </div>
                        <div class="col">
                            <label for="cadastro_unico">
                                Cadastro �nico
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <input type="date" name="data_nascimento" id="data_nascimento" class="form-control" required="true" >
                            <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaData">?</button>
                            <div id="ajudaData" class="collapse azulAjuda">
                                Aqui devemos preencher o dia, m�s e ano que o membro da Fam�la nasceu.
                            </div> 
                        </div>
                        <div class="col">
                            <select name="sexo" class="form-control" id="sexo" required="true">
                                <option value="null" selected="">Escolha uma op��o:</option>
                                <option value="Masculino">Masculino</option>
                                <option value="Feminino">Feminino</option>
                                <option value="Outros">Outros</option>
                            </select>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaSexo">?</button>
                            <div id="ajudaSexo" class="collapse azulAjuda">
                                Escolha o sexo do membro da Fam�lia, sendo poss�vel escolher outros para aquele(a) que n�o se identifica ou n�o quer informar.
                            </div> 
                        </div>
                        <div class="col">
                            <select name="cor_raca" class="form-control" id="cor_raca"  required="true" >
                                <option value="null" selected="">Escolha uma op��o:</option>
                                <option value="Branco">Branco</option>
                                <option value="Amarelo">Amarelo</option>
                                <option value="Negro">Negro</option>
                                <option value="Parda">Parda</option>
                                <option value="Ind�gena">ind�gena</option>
                                <option value="Outro">N�o encontrei minha etnia</option>
                            </select>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCor_raca">?</button>
                            <div id="ajudaCor_raca" class="collapse azulAjuda">
                                Defini-se sua cor por se tratar da regi�o/pa�s em que se t�m como origem da ra�a e ancestralidade.
                            </div> 
                        </div>
                        <div class="col">
                            <input type="text" name="cadastro_unico" id="cadastro_unico" class="form-control"  placeholder="Qual o N� do cadastro �nico?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaCadastro_unico">?</button>
                            <div id="ajudaCadastro_unico" class="collapse azulAjuda">
                                O Cadastro �nico pode ser obtido pelo site do governo federal, b�sico para atendimento aos beneficios.
                            </div> 
                        </div>
                    </div>       
                    <div class="row form-group textoAzul">    
                        <div class="col">
                            <label for="rg">
                                RG
                            </label>
                        </div>
                        <div class="col">
                            <label for="cpf">
                                CPF
                            </label>
                        </div>
                        <div class="col">
                            <label for="nis">
                                NIS
                            </label>
                        </div>
                        <div class="col">
                            <label for="titulo">
                                T�tulo
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <input type="text" name="rg" id="rg" class="form-control rg" placeholder="Qual o N� do RG?" >
                            <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaRg">?</button>
                            <div id="ajudaRg" class="collapse azulAjuda">
                                A c�dula de identidade, carteira de identidade, identidade ou RG � o documento nacional de identifica��o civil no Brasil. Pode ser obtida no Pol�cia Militar.
                            </div> 
                        </div>
                        <div class="col">
                            <input type="text" name="cpf" id="cpf " class="form-control cpf"  placeholder="Qual o N� do CPF?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCPF">?</button>
                            <div id="ajudaCPF" class="collapse azulAjuda">
                                O CPF � o c�digo de pessoa fis�ca que pode ser adquirido junto ao banco do brasil, banco caixa economica, correios...
                            </div> 
                        </div>
                        <div class="col">
                            <input type="text" name="nis" id="nis" class="form-control nis"  placeholder="Qual o N� do NIS?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaNis">?</button>
                            <div id="ajudaNis" class="collapse azulAjuda">
                                O N�mero de Identifica��o Social, para conseguir consultar o saldo das contas do FGTS, o trabalhador precisa ter em m�os o seu N�mero de Identifica��o Social (NIS), tamb�m chamado de PIS/PASEP ou NIT. Este n�mero pode ser consultado nos extratos do FGTS enviados pela Caixa Econ�mica Federal, no Cart�o Cidad�o ou na pr�pria carteira de trabalho.
                            </div> 
                        </div>
                        <div class="col">
                            <input type="text" name="titulo" id="titulo" class="form-control titulo"  placeholder="Qual o N� T�tulo de eleitor?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaTitulo">?</button>
                            <div id="ajudaTitulo" class="collapse azulAjuda">
                                T�tulo de eleitor � o documento que comprova que um determinado cidad�o est� inscrito na Justi�a Eleitoral do Brasil e se encontra apto a exercer tanto o eleitorado ativo (votar num candidato), quanto o eleitorado passivo (ser votado como candidato) em elei��es municipais, estaduais e federais.
                            </div> 
                        </div>
                    </div> 
                    <div class="row form-group textoAzul">    
                        <div class="col">
                            <label for="nome_pai">
                                Nome do Pai
                            </label>
                        </div>
                        <div class="col">
                            <label for="nome_mae">
                                Nome da M�e
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <input type="text" name="nome_pai" id="nome_pai" class="form-control" placeholder="Qual o nome do Pai do Membro da Fam�lia?" >
                            <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaNome_pai">?</button>
                            <div id="ajudaNome_pai" class="collapse azulAjuda">
                                Nome completo do pai do membro da Fam�lia.
                            </div> 
                        </div>
                        <div class="col">
                            <input type="text" name="nome_mae" id="nome_mae " class="form-control"  placeholder="Qual o nome da M�e do Membro da Fam�lia?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome_mae">?</button>
                            <div id="ajudaNome_mae" class="collapse azulAjuda">
                                O Nome completo da M�e do membro da Fam�lia. 
                            </div> 
                        </div>
                    </div>
                    <div class="row form-group textoAzul">    
                        <div class="col-4">
                            <label for="certidao_nasc_casa">
                                Certid�o de Nascimento/Casamento
                            </label>
                        </div>
                        <div class="col-2">
                            <label for="relacao_familiar">
                                Rela��o Familiar
                            </label>
                        </div>
                        <div class="col">
                            <label for="funcao_familiar">
                                Fun��o Familiar
                            </label>
                        </div>
                        <div class="col">
                            <label for="naturalidade">
                                Naturalidade
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col-4">
                            <input type="text" name="certidao_nasc_casa" id="certidao_nasc_casa" class="form-control" placeholder="N� Certid�o de Nascimento/Casamento" >
                            <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaCertidao_nasc_casa">?</button>
                            <div id="ajudaCertidao_nasc_casa" class="collapse azulAjuda">
                                Se solteiro, digite a certid�o de nascimento, ou se casado digite o n�mero da certid�o de casamento.
                            </div> 
                        </div>
                        <div class="col-2">
                            <select name="relacao_familiar" class="form-control" id="relacao_familiar"  required="true" >
                                <option value="" selected="">Op��es:</option>
                                <option value="Respons�vel">Respons�vel</option>
                                <option value="Esposo(a)">Esposo(a)</option>
                                <option value="Pai">Pai</option>
                                <option value="M�e">M�e</option>
                                <option value="Padastro">Padastro</option>
                                <option value="Madastra">Madastra</option>
                                <option value="Filho(a)">Filho(a)</option>
                                <option value="Tio(a)">Tio(a)</option>
                                <option value="Primo(a)">Primo(a)</option>
                                <option value="Sobrinho(a)">Sobrinho(a)</option>
                                <option value="Av�(�)">Av�(�)</option>
                                <option value="Outros">Outros</option>
                            </select>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaRelacao_familiar">?</button>
                            <div id="ajudaRelacao_familiar" class="collapse azulAjuda">
                                Devemos preencher com o Rela��o Familiar que o Membro da Fam�lia tem com o Respons�vel.
                            </div> 
                        </div>
                        <div class="col">
                            <select name="funcao_familiar" class="form-control" id="funcao_familiar"  required="true" >
                                <option value="" selected="">Escolha uma op��o:</option>
                                <option value="Trabalha em tempo integral">Trabalha em tempo integral</option>
                                <option value="Trabalha em meio per�odo">Trabalha em meio per�odo</option>
                                <option value="Desempregado(a)">Desempregado(a)</option>
                                <option value="Trabalha em casa">Trabalha em casa</option>
                                <option value="Estudante">Estudante</option>
                                <option value="Estuda e trabalha">Estuda e trabalha</option>
                                <option value="Aposentada(a)">Aposentada(a)</option>
                                <option value="Menor">Menor</option>
                                <option value="Do lar">Do lar</option>
                                <option value="Outros">Outros</option>
                            </select>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaFuncao_familiar">?</button>
                            <div id="ajudaFuncao_familiar" class="collapse azulAjuda">
                                Diz respeito a ocupa��o de tempo que o membro da fam�lia tem. 
                            </div> 
                        </div>
                        <div class="col">
                            <input type="text" name="naturalidade" id="naturalidade" class="form-control"  placeholder="Qual a naturalidade?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaNaturalidade">?</button>
                            <div id="ajudaNaturalidade" class="collapse azulAjuda">
                                As express�es Local de nascimento, lugar de nascimento ou naturalidade indicam o local onde uma pessoa nasceu.
                            </div> 
                        </div>
                    </div>
                    <div class="row form-group"> 
                        <div class="col text-center">
                            <input type="submit" id="submit" class="btn btn-primary" value="Cadastrar">
                            <input type="button" value="Cancelar" class="btn btn-danger" onClick="history.go(-1)"> 
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
                $('.titulo').mask('0000 0000 0000 00');
                $('.rg').mask('000.000.000-0');
                $('.nis').mask('000.00000.00-0');
                $('.cpf').mask('000.000.000-00');
            });
        </script>
    </body>
</html>



