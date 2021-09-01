<%-- 
    Document   : date-time
    Created on : 30 de ago. de 2021, 20:38:52
    Author     : Dell Inspiron 153000
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JAVA EE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
       <h1>JAVA EE</h1>
       <h2>JAVA Server Pages</h2>
       <h3>Data/hora do servidor</h3>
       <h4><a href="index.html">Voltar</a></h4>
       <hr/>
       <%Date now = new Date();%>
       <div> <%= now %> </div>
    </body>
</html>
