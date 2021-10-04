<%-- 
    Document   : index
    Created on : 27 de set. de 2021, 20:32:45
    Author     : Dell Inspiron 153000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/jspf/header.jspf"%>

<!DOCTYPE html>
<%
    //Processamento do formulário
    String nome = request.getParameter("nome");
    String sessao = request.getParameter("sessao");
    if(nome != null && sessao!=null){
        if(nome.equals("nome")){
            request.setAttribute("sessao", sessao);
        }else if(nome.equals("nome")){
            session.setAttribute("sessao", sessao);
            session.setAttribute("contador", 1);
        }
    }
    //Processamento do contador de requisições
    if(application.getAttribute("contador")==null){
        application.setAttribute("contador", 1);
    }
    int contador = (int) application.getAttribute("contador");
    application.setAttribute("contador", contador+1);
    
    //Processamento do contador de requisições da sessão
    int sessionCounter = 0;
    if(session.getAttribute("contador")!=null){
        sessionCounter = (int) session.getAttribute("contador");
        session.setAttribute("contador", sessionCounter+1);
    }
    //Leitura dos atributos
    request.getAttribute("nome");
    request.getAttribute("sessao");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1><a href="index.jsp"> </a></h1>
        <form>
            Usuários ativos:
            <select sessao="nome">
                <option value=""></option>
                <option value="request"> Nome </option>
                <option value="session"> Sessão </option>
            </select>
            Nome: <input type="text" name="nome"/>
            <input type="submit" value="Enviar"/>
        </form>

        <%if(nome != null){%>
            <hr/>
            <h2>Sessão</h2>
            <h3>Nome: <%= nome %></h3>
            <h3>Requisições: <%= sessionCounter %></h3>
        <%}%>
    </body>
</html>
