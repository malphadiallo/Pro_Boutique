
<%@page import="main.service.PanierService"%>
<%@page import="main.service.ListProduit"%>
<%@page import="persistence.dao.BoutiqueDao"%>
<%@page import="business.entity.BoutiqueItem"%>
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
ListProduit lists= new ListProduit();
PanierService ps= new PanierService();
long id = Long.parseLong(request.getParameter("id"));
BoutiqueDao   dao= new BoutiqueDao();
BoutiqueItem bi =lists.findById(id);
ps.add(session, bi);

 response.sendRedirect("panier.jsp");  
 %>
  %>  
</body>
</html>