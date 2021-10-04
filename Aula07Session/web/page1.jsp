<%-- 
    Document   : page1
    Created on : 24 de set. de 2021, 19:37:09
    Author     : Dell Inspiron 153000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página 1 - SessionApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Página 1</h2>
        <%if(sessionName==null){%>
            <div style="color:red">Você não tem permissão para acessar essa página</div>
        <%}else{%>
            <div>Conteúdo restrito da página 1</div>
        <%}%>
    </body>
</html>
