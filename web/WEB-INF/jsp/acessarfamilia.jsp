<%-- 
    Document   : buscafamilia
    Created on : 23/04/2019, 17:46:19
    Author     : Marcus
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="<c:url value='../resources/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='../resources/css/principal.css' />" rel="stylesheet"></link>
	<script src="<c:url value='../resources/js/jQuery.js' />"></script>
        <script src="<c:url value='../resources/js/popper.js' />" ></script>
        <script src="<c:url value='../resources/js/bootstrap.js' />"></script>
        <script src="<c:url value='../resources/js/jquery.mask.js' />"></script>
        <title>Fam�lia</title>
    </head>
    <body>
        <div class="container" > 
                <div class="col-md-6 cadastro">
                    <h1 class="black">Fam�lia</h1>
                    <div class="container form-group">
                            <table class="table">
                                <thead>
                                    <tr>    
                                        <th>Nome Respos�vel</th>
                                        <th>Endere�o</th>
                                        <th>Telefone</th>
                                        <th>Situa��o Familiar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items= "${buscaFamilia}" var="atributo">
                                         ${atributo.responsavel_familiar}
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        </div>
            </div>
       </body>
       
    <script type="text/javascript">
        
        
        var id = null;
        $('button.btn').on('click', function(e){
          id = $(this).attr('date-id');
        });
        // callback modal abre
        $('#confirm').on('show.bs.modal', function(e){
            $("#cx").text(id);
        });
    </script>
    
</html>