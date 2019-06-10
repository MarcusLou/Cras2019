<%-- 
    Document   : boasvindas
    Created on : 14/04/2019, 16:22:28
    Author     : eu
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- mapear boot por tags -->
<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/principal.css"/>
        <script src="resources/js/jQuery.js"></script>
        <script src="resources/js/popper.js" ></script>
        <script src="resources/js/bootstrap.js"></script> 
  
  <title>Boas Vindas</title>
    </head>
    <body>
        
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">X</span></button>
                <!-- <h4 class="modal-title">Titulo Do Modal</h4>-->
                </div>
                <div class="modal-body">
                    <h1 >Bom dia!!!</h1>
                    <p>Seja Bem Vindo ao nosso Sistema!</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">Fechar!</button>
                <!-- <button type="button" class="btn btn-primary">Ok</button>-->
                </div>
            </div>
        </div>
    </div>
        
  
    </body>
    
    <script type="text/javascript">
        $(function(){
            $('#myModal').modal('show');
        });
    </script>
</html>
