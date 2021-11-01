<%-- 
    Document   : horario
    Created on : 1 de nov. de 2021, 02:58:38
    Author     : Dell Inspiron 153000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h3>Horário atual: </h3>
        <h3><%= new java.util.Date() %></h3>
        <h3>Horário do intervalo: 20:50h às 21:00h</h3>
    </body>
</html>
