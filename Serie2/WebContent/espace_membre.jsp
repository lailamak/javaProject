<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="beans.Membre"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%  if (session.getAttribute("membre")!=null){ 


%>

<h3>Bienvenue user !!</h3>	
<b>Username:</b>${membre.username}
<b>Password:</b>${membre.password}


<% 
}
else{

%>

<b>Vous devez vous connecter pour acceder a l'espace membre <a href="login.jsp">Login</a></b>
<%   } %>

<a href="disconnect">Deconnexion</a>
</body>
</html>