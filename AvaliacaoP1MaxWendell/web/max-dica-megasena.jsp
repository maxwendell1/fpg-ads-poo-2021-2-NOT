<%-- 
    Document   : max-dica-megasena
    Created on : 4 de out. de 2021, 16:38:15
    Author     : Dell Inspiron 153000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/jspf/header.jspf"%>
<!DOCTYPE html>
<%

    int n = 6;

%>
<html>
    <head>
        <title>Dica Mega-Sena</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <h3>Dica Mega-Sena</h3>
        <hr/>

        
        <table border="1">
            <tr>
                <th>Números</th>
            </tr>
            
            <%for(int i=1; i<=n; i++){%>
            
            <tr>
                <td><%= i %></td>
                <td><%= ((int)(Math.random()*60)) %></td>
            </tr>
            <%}%>
            
        </table>
            
        <hr/>
        
        <form action="max-dica-megasena.jsp">
            <input type="submit" value="Gerar"/>
        </form>
            
    </body>
</html>
