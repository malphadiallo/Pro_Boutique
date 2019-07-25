
<%@page import="main.service.ListProduit"%>
<%@page import="business.entity.BoutiqueItem"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://kit.fontawesome.com/8adf92a875.js"></script>
<link rel="stylesheet" media="screen" type="text/css" href="style.css"/>
<title>Insert title here</title>
</head>
<body>
      <div id="demoFont"> LISTES PRODUITS  </div>
	  
     <%
      ListProduit  ls = new ListProduit();
      %>

 <table class="blueTable" >
      <thead>
            <tr> 
	           <th> id</th>
	           <th> code</th>
	           <th> label </th>
	           <th> price </th>
	           <th> ajouter</th>
           </tr>
     </thead>      
<% for(BoutiqueItem s:ls.list()){ %>   
   <tr id="malp">
   	   <td><%=s.getId() %></td>
   	   <td><%=s.getCode() %></td>
   	   <td><%=s.getLabel() %></td>
   	   <td><%=s.getPrice() %></td>
   	   <td><a href="pageproduit.jsp?id=<%=s.getId() %>"><i class="fas fa-user-plus"></i> </td>
   </tr>
<%} %>

 </table>
</body>
</html>