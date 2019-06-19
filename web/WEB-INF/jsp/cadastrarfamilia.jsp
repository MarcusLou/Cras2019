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
                    <div class="row form-group textoAzul">    
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
                  <h4 class="modal-title w-100 font-weight-bold">Cadastrar Responsável</h4>
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
                                            Devemos preencher com um telefone para entrar em contato com o Membro da Família.
                                        </div> 
                                    </div>
                                    <div class="col-2">
                                        <input type="text" name="celular" id="celular" class="form-control phone"  placeholder="Qual o Celular?">
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaCelular">?</button>
                                        <div id="ajudaCelular" class="collapse azulAjuda">
                                            Devemos preencher com um telefone celular para entrar em contato com o membro da Família.
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
                                            Cadastro Único
                                        </label>
                                    </div>
                                </div>
                                <div class="row form-group">    
                                    <div class="col">
                                        <input type="date" name="data_nascimento" id="data_nascimento" class="form-control" required="true" >
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaData">?</button>
                                        <div id="ajudaData" class="collapse azulAjuda">
                                            Aqui devemos preencher o dia, mês e ano que o membro da Famíla nasceu.
                                        </div> 
                                    </div>
                                    <div class="col">
                                        <select name="sexo" class="form-control" id="sexo" required="true">
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
                                    <div class="col">
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
                                    <div class="col">
                                        <input type="text" name="cadastro_unico" id="cadastro_unico" class="form-control"  placeholder="Qual o Nº do cadastro único?">
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaCadastro_unico">?</button>
                                        <div id="ajudaCadastro_unico" class="collapse azulAjuda">
                                            O Cadastro único pode ser obtido pelo site do governo federal, básico para atendimento aos beneficios.
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
                                            Título
                                        </label>
                                    </div>
                                </div>
                                <div class="row form-group">    
                                    <div class="col">
                                        <input type="text" name="rg" id="rg" class="form-control rg" placeholder="Qual o Nº do RG?" >
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaRg">?</button>
                                        <div id="ajudaRg" class="collapse azulAjuda">
                                            A cédula de identidade, carteira de identidade, identidade ou RG é o documento nacional de identificação civil no Brasil. Pode ser obtida no Polícia Militar.
                                        </div> 
                                    </div>
                                    <div class="col">
                                        <input type="text" name="cpf" id="cpf " class="form-control cpf"  placeholder="Qual o Nº do CPF?">
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCPF">?</button>
                                        <div id="ajudaCPF" class="collapse azulAjuda">
                                            O CPF é o código de pessoa fisíca que pode ser adquirido junto ao banco do brasil, banco caixa economica, correios...
                                        </div> 
                                    </div>
                                    <div class="col">
                                        <input type="text" name="nis" id="nis" class="form-control nis"  placeholder="Qual o Nº do NIS?">
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaNis">?</button>
                                        <div id="ajudaNis" class="collapse azulAjuda">
                                            O Número de Identificação Social, para conseguir consultar o saldo das contas do FGTS, o trabalhador precisa ter em mãos o seu Número de Identificação Social (NIS), também chamado de PIS/PASEP ou NIT. Este número pode ser consultado nos extratos do FGTS enviados pela Caixa Econômica Federal, no Cartão Cidadão ou na própria carteira de trabalho.
                                        </div> 
                                    </div>
                                    <div class="col">
                                        <input type="text" name="titulo" id="titulo" class="form-control titulo"  placeholder="Qual o Nº Título de eleitor?">
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaTitulo">?</button>
                                        <div id="ajudaTitulo" class="collapse azulAjuda">
                                            Título de eleitor é o documento que comprova que um determinado cidadão está inscrito na Justiça Eleitoral do Brasil e se encontra apto a exercer tanto o eleitorado ativo (votar num candidato), quanto o eleitorado passivo (ser votado como candidato) em eleições municipais, estaduais e federais.
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
                                            Nome da Mãe
                                        </label>
                                    </div>
                                </div>
                                <div class="row form-group">    
                                    <div class="col">
                                        <input type="text" name="nome_pai" id="nome_pai" class="form-control" placeholder="Qual o nome do Pai do Membro da Família?" >
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaNome_pai">?</button>
                                        <div id="ajudaNome_pai" class="collapse azulAjuda">
                                            Nome completo do pai do membro da Família.
                                        </div> 
                                    </div>
                                    <div class="col">
                                        <input type="text" name="nome_mae" id="nome_mae " class="form-control"  placeholder="Qual o nome da Mãe do Membro da Família?">
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaNome_mae">?</button>
                                        <div id="ajudaNome_mae" class="collapse azulAjuda">
                                            O Nome completo da Mãe do membro da Família. 
                                        </div> 
                                    </div>
                                </div>
                                <div class="row form-group textoAzul">    
                                    <div class="col-4">
                                        <label for="certidao_nasc_casa">
                                            Certidão de Nascimento/Casamento
                                        </label>
                                    </div>
                                    <div class="col-2">
                                        <label for="relacao_familiar">
                                            Relação Familiar
                                        </label>
                                    </div>
                                    <div class="col">
                                        <label for="funcao_familiar">
                                            Função Familiar
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
                                        <input type="text" name="certidao_nasc_casa" id="certidao_nasc_casa" class="form-control" placeholder="Nº Certidão de Nascimento/Casamento" >
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaCertidao_nasc_casa">?</button>
                                        <div id="ajudaCertidao_nasc_casa" class="collapse azulAjuda">
                                            Se solteiro, digite a certidão de nascimento, ou se casado digite o número da certidão de casamento.
                                        </div> 
                                    </div>
                                    <div class="col-2">
                                        <select name="relacao_familiar" class="form-control" id="relacao_familiar"  required="true" >
                                            <option value="" selected="">Opções:</option>
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
                                    <div class="col">
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
                                            <option value="Outros">Outros</option>
                                        </select>
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10" data-toggle="collapse" data-target="#ajudaFuncao_familiar">?</button>
                                        <div id="ajudaFuncao_familiar" class="collapse azulAjuda">
                                            Diz respeito a ocupação de tempo que o membro da família tem. 
                                        </div> 
                                    </div>
                                    <div class="col">
                                        <input type="text" name="naturalidade" id="naturalidade" class="form-control"  placeholder="Qual a naturalidade?">
                                        <button type="button" class="btn btn-outline-info float-right buttonFont10  " data-toggle="collapse" data-target="#ajudaNaturalidade">?</button>
                                        <div id="ajudaNaturalidade" class="collapse azulAjuda">
                                            As expressões Local de nascimento, lugar de nascimento ou naturalidade indicam o local onde uma pessoa nasceu.
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



