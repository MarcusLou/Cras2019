<%-- 
    Document   : buscaevento
    Created on : 23/04/2019, 17:46:19
    Author     : Tadao
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
        <title>BuscaEventos</title>
    </head>
    <body>
        <div class="container" > 
                <div class="col-md-6 cadastro">
                    <h1> Buscar Evento</h1>
                    <form action="buscarEvento" method="POST">
                        <div class="form-group"> 
                            
                            Nome do Evento
                            </br>
                            <table width="700">
                                <tr> 
                                    <td colspan="90"><input type="text" name="nomeEvento" id="nomeEvento" class="form-control" required=""> </td>
                                    <td colspan="10"> <input type="submit" id="submit" class="btn btn-primary" value="Buscar"> </td>
                                </tr>
                            </table>
                            
                           
                        </div>
                        
                        <div class="form-group"> 

                            
                            <a class="btn btn-success" href="renderizarCadastrarEvento">Cadastrar Evento!</a>
                        </div>
                        
                        <div class="container">
                            <table class="table">
                                <thead>
                                    <tr>    
                                        <th>Nome do Evento</th>
                                        <th>Nome do Coordenador</th>
                                        <th>Endereço</th>
                                        <th>Data de Início </th>
                                        <th>Data de Término </th>
                                        <th>Horário</th>
                                        <th>Duração</th>
                                        <th>Descrição</th>
                                        <th>Status </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items= "${buscaEvento}" var="atributo">
                                        <tr>
                                            <td> ${atributo.nomeEvento}</td>
                                            <td> ${atributo.nomeCoordenador}</td>
                                            <td> ${atributo.endereco}</td>
                                            <td> ${atributo.dataInicio}</td>
                                            <td> ${atributo.dataTermino}</td>
                                            <td> ${atributo.horario}</td>
                                            <td> ${atributo.duracao}</td>
                                            <td> ${atributo.descricao}</td>
                                            <td> ${atributo.status}</td>
                                            <td> <div class="form-group"> 
                                                    
                                            <td><a class="btn btn-warning" href="renderizarEditarEvento/${atributo.id}">Editar</a></td>  
                                            <td><a class="btn btn-danger"href="renderizarRemoverEvento/${atributo.id}" >Remover</a></td> 
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
