<%@page import="main.entities.PanierItem"%>
<%@page import="main.service.PanierService"%>
<%@page import="main.entities.Panier"%>
<%@page import="persistence.dao.BoutiqueDao"%>
<%@page import="business.entity.BoutiqueItem"%>
<%@page import="main.service.ListProduit"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
<%
   PanierService ps= new PanierService();
   Panier pn=ps.getPanier(session);
   
%>
<div id="demoFont"> PANIER  </div>
<table class="blueTable" >
      <thead>
            <tr> 
	           <th>CODE</th>
	           <th>LABEL</th>
	           <th> NOMBRE</th>
	           <th> prix</th>
	          
           </tr>
     </thead>      
<% for(PanierItem s:pn.getItems()){ %>   
   <tr id="malp">
   	   <td><%=s.getCodeProduit() %></td>
   	   <td><%=s.getLabelProduit() %></td>
   	   <td><%=s.getNb() %></td>
   	   <td><%=s.getPrix()%></td>
   	   
   </tr>
<%} %>

 </table>



</body>
</html>