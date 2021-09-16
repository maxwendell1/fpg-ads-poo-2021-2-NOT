<%-- 
    Document   : Calendario
    Created on : 3 de set. de 2021, 00:03:45
    Author     : Dell Inspiron 153000
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>

<!DOCTYPE html>

<%
    int ano = 0;
    int mes;
        
    String error = null;
    if(request.getParameter("ano")==null || request.getParameter("mes")==null){
        error = "Não foram informados os parâmetros 'ano' e 'mes' necessários";
    }else{
        try{
            ano = Integer.parseInt(request.getParameter("ano"));
        }catch(Exception e){
            error = "O valor informado em 'ano' ('"+request.getParameter("ano")+"') é inválido";
        }
        try{
            mes = Integer.parseInt(request.getParameter("mes"));
        }catch(Exception e){
            error = "O valor informado em 'mes' ('"+request.getParameter("mes")+"') é inválido";
        }
    }
    
%>

<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <hr/>
        <h2>MAX WENDELL GARCIA SANTANA</h2>
        <h2>R.A.: 1290482013032</h2>
        <hr/>
        <form action="Calendario.jsp">
            <h4>Informe o mês (apenas letras minúsculas): </h4>
            <input type="text" name="mes"/>
            <h4>Informe o ano (Ex: 1993): </h4>
            <input type="number" name="ano" value="<%= ano %>"/>
            <br/><br/>
            <input type="submit" value="Gerar Calendário"/>
        </form>
    </body>
</html>
