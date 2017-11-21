<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% //Client client=(Client) request.getAttribute("client");   %>

<jsp:useBean id="client" class="beans.Client" scope="request" />
<jsp:setProperty property="nom" name="client" value="mak"/>
<jsp:setProperty property="prenom" name="client" param="prenom"/>

<jsp:setProperty property="*" name="client" />


<table>
<tr>
<td>Nom:</td>
<td><%//=client.getNom() %>
<jsp:getProperty property="nom" name="client"/>

</td>
</tr>
<tr> 
<tr>
<td>prenom:</td>
<td><jsp:getProperty property="prenom" name="client"/></td>
</tr>
<tr> 

<tr> 
<tr>
<td>Ville:</td>
<td><jsp:getProperty property="ville" name="client"/></td>
</tr>
<tr> 

</table>


 

</body>
</html>