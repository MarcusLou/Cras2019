<%-- 
    Document   : buscaragendaadministrativa
    Created on : 09/06/2019, 22:45:25
    Author     : Ronnie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- mapear boot por tags -->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script>
        <title>Atendimento</title>
    </head>
    <body>
        <div class="container" > 
                <div class="col-md-7 cadastro">
                    <h1> Buscar Atendimento</h1>
                    <form action="buscarAtendimento" method="POST">
                        <div class="form-group"> 
                            
                            Nome do Membro da Familia
                            </br>
                            <table width="700">
                                <tr> 
                                    <td colspan="90"><input type="text" name="nomeMembro" id="nomeMembro" class="form-control" required=""> </td>
                                    <td colspan="10"> <input type="submit" id="submit" class="btn btn-primary" value="Buscar"> </td>
                                </tr>
                            </table>
                            
                           
                        </div>
                        
                        <div class="form-group"> 

                            
                            <a class="btn btn-success" href="renderizarCadastrarAtendimento">Cadastrar Atendimento!</a>
                        </div>
                        
                        <div class="container">
                            <table class="table">
                                <thead>
                                    <tr>    
                                        <th>Nome </th>
                                        <th>CPF</th>
                                        <th>Endereço </th>
                                        <th>Data</th>
                                        <th>Horário</th>
                                        <th>Duração</th>
                                        <th>Descrição</th>
                                        <th>Status </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items= "${buscaAtendimento}" var="atributo">
                                        <tr>
                                            <td> ${atributo.nomeMembro}</td>
                                            <td> ${atributo.cpf_membro}</td>
                                            <td> ${atributo.endereco}</td>
                                            <td> ${atributo.data_atendimento}</td>
                                            <td> ${atributo.horario}</td>
                                            <td> ${atributo.duracao}</td>
                                            <td> ${atributo.descricao}</td>
                                            <td> ${atributo.status}</td>
                                            <td> <div class="form-group"> 
                                                    
                                            <td><a class="btn btn-warning" href="renderizarEditarAtendimento/${atributo.id}">Editar</a></td>  
                                            <td><a class="btn btn-danger" href="renderizarRemoverAtendimento/${atributo.id}" >Remover</a></td> 
                                                </div></td>
                                        </tr>
                                    </c:forEach>


                                </tbody>
                            </table>
                        </div>

                    </form>
                </div>  
       </body>
</html>