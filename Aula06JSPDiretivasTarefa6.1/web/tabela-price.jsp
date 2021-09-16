<%-- 
    Document   : tabela-price
    Created on : 15 de set. de 2021, 17:01:09
    Author     : Dell Inspiron 153000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.text.DecimalFormat"%> 

<% DecimalFormat decimais = new DecimalFormat("0.00");
   
   String errorMessage;
   double valor = 0, percentual = 0;
   double juros = 0, amortizacao = 0;
   int mes = 0; double parcela = 0;
    
   try{
        valor = Double.parseDouble(request.getParameter("valor"));
        percentual = Double.parseDouble(request.getParameter("percentual"));
        mes = Integer.parseInt(request.getParameter("mes"));
        
        percentual = percentual/100;
        parcela = (valor*percentual)/(1-(1/(Math.pow(1 + percentual,mes))));
        juros = valor * percentual;
        
    }catch(Exception e){
        errorMessage = "Valores inseridos são inválidos!";
    }%>
    
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Tabela Price</title>
        </head>
        <body>
            
            <%@include file="../WEB-INF/jspf/header.jspf"%>
            
            <div>
            <form action="tabela-price.jsp"> 
                Valor do empréstimo <input type="number" name="valor" value="<%=valor%>" min="1" step="0.01"/> 
                <br>
                <br>
                Percentual <input type="number" name="percentual" value="<%=percentual/100%>" step="0.01"/> 
                <br>
                <br>
                Meses <input type="number" name="mes" value="<%=mes%>" min="1"/>
                <br>
                <br>
                <button type="submit"> Calcular </button>  |  
                <button type="reset"> Limpar Valores </button>
                <br>
                <br>   
            </form>
            </div>
                
            <br>
            
            <div>
            <table class="table-price" border="thin"> 
                 
                <tr>
                    <th>Período (Meses)</th>
                    <th>Valor da Parcela</th>                                        
                    <th>Juros</th>
                    <th>Amortização</th>
                    <th>Saldo Devedor</th>
                </tr> 
                 
                <% for(int periodo = 0; periodo <= mes; periodo++){ %> 
                <%if(periodo == 0){%> 
                 
                <tr>
                    <th><%= periodo %></th>
                    <th>0,00</th>
                    <th>0,00</th>
                    <th>0,00</th>
                    <th><%= decimais.format(valor) %></th>
                </tr> 
                 
                <%}else{
                        if(periodo > 1){
                            juros = valor * percentual;
                        } 

                        valor = (valor - parcela)+juros; 
                        amortizacao = parcela - juros; 

                            if(periodo == mes){
                                valor = 0;
                            }%> 
                            
                            <tr>
                                <th> <%= periodo %> </th>
                                <th> <%= decimais.format(parcela) %> </th>
                                <th> <%= decimais.format(juros) %> </th>
                                <th> <%= decimais.format(amortizacao) %> </th>
                                <th> <%= decimais.format(valor) %> </th>
                            </tr> 
                        <%}%> 
                    <%}%>
            </table>
            </div>
            
            <%@include file="../WEB-INF/jspf/footer.jspf"%>
            
        </body>
    </html>

