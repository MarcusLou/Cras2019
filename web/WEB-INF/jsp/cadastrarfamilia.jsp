<%-- 
    Document   : cadastrarFamilia
    Created on : 05/06/2019, 13:16:18
    Author     : Marcus
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        <style>
            .modal-dialog{
                width: 1000px;
                max-width: 100%;
              }

            
            
        </style>
        <title>Cadastro de Fam�lia</title>
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
                    <h1 class="black text-center">Cadastre a fam�lia aqui!</h1>
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
                    <div class="row form-group textoAzul">    
                        <div class="col-8">
                            <label for="responsavel_familiar">
                                Nome do Respons�vel da Fam�lia
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
                            <input type="text" name="responsavel_familiar" id="responsavel_familiar" class="form-control" required="true" placeholder="Qual o respons�vel da Fam�lia?" >
                            <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaResponsavel_familiar">?</button>
                            <div id="ajudaResponsavel_familiar" class="collapse azulAjuda">
                                O nome respons�vel da Fam�lia � a pessoal que se responsabiliza por prestar informa��es da Fam�lia...
                            </div> 
                        </div>
                        <div class="col-2">
                            <input type="text" name="telefone_fixo" id="telefone_fixo " class="form-control phone"  placeholder="Telefone Principal">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTelefone_fixo">?</button>
                            <div id="ajudaTelefone_fixo" class="collapse azulAjuda">
                                Devemos preencher com um telefone principal para entrar em contato com o Respons�vel ou qualquer membro da Fam�lia.
                            </div> 
                        </div>
                        <div class="col-2">
                            <input type="text" name="cep" id="cep" class="form-control cep"  placeholder="CEP">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaCep">?</button>
                            <a  class="btn btn-outline-info float-right buttonFont10" href="http://www.buscacep.correios.com.br/sistemas/buscacep/buscaCepEndereco.cfm"  target="_blank">Pesquisar</a>
                            <div id="ajudaCep" class="collapse azulAjuda">
                                O CEP pode ser obtido pelo site dos Corr�ios: www.correios.com.br.
                            </div> 
                        </div>
                    </div> 
                    <div class="row form-group">    
                        <div class="col">
                            <label for="endereco">
                                Endere�o
                            </label>
                        </div>
                        <div class="col">
                            <label for="observacoes">
                                Observa��es
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <textarea rows="1" name="endereco" id="endereco" class="form-control"  required="true" placeholder="Digite o endere�o da Fam�lia..."></textarea>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaEndereco">?</button>
                            <div id="ajudaEndereco" class="collapse azulAjuda">
                                O Endere�o pode ser uma rua, avenida, ruela ou estrada, por exemplo. Deve conter todos os dados, assim como bairro. A cidade e Estado n�o � importante pois a Unidade do Cras nunca atende fora da regi�o local. 
                            </div> 
                        </div>
                        <div class="col">
                            <textarea rows="1" name="observacoes" id="observacoes" class="form-control"  required="true" placeholder="Digite observa��es sobre Fam�lia:"></textarea>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaObservacoes">?</button>
                            <div id="ajudaObservacoes" class="collapse azulAjuda">
                                As observa��es devem ser sucintas, pertinentes a Fam�lia como um todo, relatando problemas que possam ser pertinete a todos. 
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
                                C�modos da Moradia
                            </label>
                        </div>
                        <div class="col">
                            <label for="condicoes_moradia">
                                Condi��es da Moradia
                            </label>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <select name="tipo_moradia" class="form-control" id="tipo_moradia" >
                                <option value="" selected="">Escolha uma op��o:</option>
                                <option value="Pr�pria">Pr�pria</option>
                                <option value="Alugada">Alugada</option>
                                <option value="Cedida">Cedida</option>
                                <option value="Morador Rua">Morador de rua</option>
                                <option value="Outros">Outros</option>
                            </select>
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTipo_moradia">?</button>
                            <div id="ajudaTipo_moradia" class="collapse azulAjuda">
                                Devemos preencher com o tipo de moradia que a Fam�lia tem, como exemplo pr�pria, alugada, cedida, morador de rua, etc...Caso seja outros, descrever em observa��es.
                            </div> 
                        </div>
                        <div class="col">
                            <select name="comodos_moradia" class="form-control" id="comodos_moradia" >
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
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaComodos_moradia">?</button>
                            <div id="ajudaComodos_moradia" class="collapse azulAjuda">
                                O(s) c�modo(s) na moradia � a quantidade de parti��es que a casa tem onde reside a Fam�lia, sendo contado quartos, sala, cozinha, quartos, edicula, etc...
                            </div> 
                        </div>
                        <div class="col">
                            <input type="text" name="condicoes_moradia" id="condicoes_moradia" class="form-control" placeholder="Qual a condi��o da moradia?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCondicoes_moradia">?</button>
                            <div id="ajudaCondicoes_moradia" class="collapse azulAjuda">
                                A condi��o da moradia consiste no aspecto visual, se h� condi��o de viv�ncia de forma saud�vel, com higi�ne e qualidade de vida.
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">    
                        <div class="col">
                            <label for="situacao_familiar">
                                Situa��o Familiar
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
                            <input type="text" name="situacao_familiar" id="situacao_familiar" class="form-control" required="true" placeholder="Qual a situa��o da Fam�lia?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaSituacao_familiar">?</button>
                            <div id="ajudaSituacao_familiar" class="collapse azulAjuda">
                                A Situa��o Familiar � a informa��o atual em que a Fam�lia se encontra, sendo no estado mais vulnerav�l ao est�vel.
                            </div> 
                        </div>
                        <div class="col">
                            <input type="text" name="renda_familiar" id="renda_familiar" class="form-control renda_familiar"  data-thousands="." data-decimal="," data-prefix="R$" placeholder="Qual a renda da Fam�lia?">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaRenda_familiar">?</button>
                            <div id="ajudaRenda_familiar" class="collapse azulAjuda">
                                A Renda Familiar � a informa��o do valor bruto em que a Fam�lia recebe mensalmente, sendo qualquer renda contabilizada.
                            </div>
                        </div>
                        <div class="col">
                            <input type="date" name="dataCad" id="dataCad" class="form-control" required="true">
                            <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData">?</button>
                            <div id="ajudaData" class="collapse azulAjuda">
                                Aqui devemos preencher o dia, m�s e ano que a Fam�la come�ou a ser atendida pelo CRAS.
                            </div> 
                        </div>
                    </div>
                    <div class="row form-group"> 
                        <div class="col text-center">
                            <div class="form-actions text-center">
                                <div  id="colaps" class="collapse"> 
                                    <input type="button" value="Cancelar" class="btn btn-primary" onClick="history.go(-1)"> 
                                    <button type="submit" id="formCadastrarMembro" class="btn btn-danger">Sim, desejo realmente <b>Cadastrar!</b></button>
                                    </br>
                                </div>
                                <div class="form-actions floatRight">
                                    </br>
                                    <input type="button"  value="Cadastrar" data-toggle="modal" data-target="#modal" class="btn btn-primary">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
        
           
                    
                        
                    
                
              
              
                      
        <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header text-center">
                  <h4 class="modal-title w-100 font-weight-bold">Cadastrar Respons�vel</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                        <form action="cadastrarMembroFamilia" method="POST" target="_self" >
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
                                        <input type="text" name="nome" id="nome" class="form-control" readonly="true">
                                         
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
                                    <div class="col text-center form-actions">
                                        
                                        <div  id="colaps2" class="collapse"> 
                                            <input type="button" value="Cancelar" class="btn btn-warning" data-dismiss="modal"> 
                                            <button type="submit" id="submit" class="btn btn-success" value="Cadastrar" data-toggle="collapse"  data-target="#colaps"   data-dismiss="modal">Sim, desejo realmente <b>Cadastrar!</b></button>
                                            </br>
                                        </div>
                                        <div class="form-actions floatRight">
                                            </br>
                                            <input type="button" value="Cadastrar" class="btn btn-primary" data-toggle="collapse"  data-target="#colaps2">
                                        </div>
                                        
                                        
                                        
                                    </div>
                                </div>
                                
                                
                                
                        
                            
                                
                            
                       
                   
                                
                                
                            </div> 
                        </form>

                </div>
              </div>
            </div>
          </div>

         
        <script>
            
              
              (function($) {
                    $('#modal').on('show.bs.modal', function() {
                      var nome = $("#responsavel_familiar").val();
                      $( '#nome' ).text( nome );
                      document.getElementById('nome').value = nome;
                    });
                  }(jQuery));
                  

            
        </script>
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



