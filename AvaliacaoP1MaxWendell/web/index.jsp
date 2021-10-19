<%-- 
    Document   : index
    Created on : 27 de set. de 2021, 20:32:45
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
       <h2>Página Inicial</h2>
       <h3>Sessões: <u><%= sessions %></u></h3>
       <% if (authUserName != null && sessionList != null){%>
            <ul>
                <%for (String sessionName: sessionList){%>
                <li><%= sessionName %></li>
                <%}%>
            </ul>
       <%}%>
    </body>
</html>