<%-- 
    Document   : Max
    Created on : 4 de out. de 2021, 16:37:29
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
       <h2>MINHA PÁGINA</h2>
       <h3>Sessões: <u><%= sessions %></u></h3>
       <% if (authUserName == null){%>
       <div>Você não tem autorização para acessar esta página</div>
       <%}else{%>
            <h3>MAX WENDELL GARCIA SANTANA</h3>
            <h3>R.A.: 12904820013032</h3>
            <h3>Ingresso na Fatec: 02/2020</h3>
            <a href="https://github.com/maxwendell1">GitHub</a>
            <h3>Disciplinas</h3>
            <table border="1">
                <tr>
                    <th>Disciplinas</th>
                </tr>
                <tr>
                    <td>Programação Orientada à Objetos</td>
                    <td>Segurança da Informação</td>
                    <td>Metodologia da Pesquisa Científica</td>
                    <td>Engenharia de Software II</td>
                    <td>Banco de Dados</td>
                </tr>               
            </table>
        <%}%>
    </body>
</html>