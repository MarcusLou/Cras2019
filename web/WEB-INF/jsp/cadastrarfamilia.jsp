<%-- 
    Document   : cadastrarFamilia
    Created on : 05/06/2019, 13:16:18
    Author     : Marcus
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- mapear boot por tags -->
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
        <title>Cadastro de Fam�lias</title>
    </head>
    <body>
        <div class="container"> 
            <div class="col-md-6 cadastro">
            <h1>Cadastre a fam�lia aqui!</h1>
            <div> 
                <form action="cadastrarFamilia" method="POST" >
                    <input type="hidden" name="cod_cras" id="cod_cras" class="form-control" value="1">
                    <input type="hidden" name="comodos_moradia" id="comodos_moradia" class="form-control" value="1">
                    <input type="hidden" name="idFuncionario" id="idFuncionario" class="form-control" value="1">
                    <div class="form-group">                         
                        <label for="responsavel_familiar">Nome do Respons�vel da Fam�lia</label>                        
                        </br>
                        <input type="text" name="responsavel_familiar" id="responsavel_familiar" class="form-control" required="" placeholder="Qual o respons�vel da Fam�lia?" >
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaResponsavel_familiar">?</button>
                        <div id="ajudaResponsavel_familiar" class="collapse azulAjuda">
                            O nome respons�vel da Fam�lia � a pessoal que se responsabiliza por prestar informa��es da Fam�lia...
                        </div> 
                    </div>
                    <div class="form-group">  
                        <label for="cep">CEP</label>                          
                        </br>
                        <input type="number" name="cep" id="cep" class="form-control" required="" placeholder="Qual o CEP, c�digo de endere�amento postal, da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaCep">?</button>
                        <div id="ajudaCep" class="collapse azulAjuda">
                            O CEP pode ser obtido pelo site dos Corr�ios: www.correios.com.br.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="situacao_familiar">Situa��o Familiar</label> 
                        </br>
                        <input type="text" name="situacao_familiar" id="situacao_familiar" class="form-control situacao_familiar" required="" data-thousands="." data-decimal="," data-prefix="R$" placeholder="Qual a situa��o da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaSituacao_familiar">?</button>
                        <div id="ajudaSituacao_familiar" class="collapse azulAjuda">
                            A Situa��o Familiar � a informa��o atual em que a Fam�lia se encontra, sendo no estado mais vulnerav�l ao est�vel.
                        </div> 
                    </div>
                    
                     <div class="form-group"> 
                        <label for="renda_familiar">Renda Familiar</label> 
                        </br>
                        <input type="text" name="renda_familiar" id="renda_familiar" class="form-control renda_familiar" required="" data-thousands="." data-decimal="," data-prefix="R$" placeholder="Qual a renda da Fam�lia?">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaRenda_familiar">?</button>
                        <div id="ajudaRenda_familiar" class="collapse azulAjuda">
                            A Renda Familiar � a informa��o do valor bruto em que a Fam�lia recebe mensalmente, sendo qualquer renda contabilizada.
                        </div> 
                    </div>
                    
                    
                    <div class="form-group"> 
                        <label for="data">Data de Cadastro</label> 
                        </br>
                        <input type="date" name="data" id="data" class="form-control" required="">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaData">?</button>
                        <div id="ajudaData" class="collapse azulAjuda">
                            Aqui devemos preencher o dia, m�s e ano que a Fam�la come�ou a ser atendida pelo CRAS.
                        </div> 
                    </div>
                     <div class="form-group"> 
                        <label for="telefone_fixo">Telefone</label> 
                        </br>
                        <input type="date" name="telefone_fixo" id="telefone_fixo" class="form-control" required="">
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaTelefone_fixo">?</button>
                        <div id="ajudaTelefone_fixo" class="collapse azulAjuda">
                            Devemos preencher com um telefone principal para entrar em contato com o Respons�vel ou qualquer membro da Fam�lia.
                        </div> 
                    </div>
                    <div class="form-group"> 
                        <label for="endereco">Endere�o</label> 
                        </br>
                        <textarea rows="4" name="endereco" id="endereco" class="form-control"  required="" placeholder="Digite o endere�o da Fam�lia..."></textarea>
                        <button type="button" class="btn btn-outline-info float-right buttonFont10 " data-toggle="collapse" data-target="#ajudaEndereco">?</button>
                        <div id="ajudaEndereco" class="collapse azulAjuda">
                            O Endere�o pode ser uma rua, avenida, ruela ou estrada, por exemplo. Deve conter todos os dados, assim como bairro. A cidade e Estado n�o � importante pois a Unidade do Cras nunca atende fora da regi�o local. 
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
            $(function(){
                $("#renda_familiar").maskMoney();
            });
        </script>
</html>



