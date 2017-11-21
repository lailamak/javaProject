<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<c:out value="${param.name}" /> <br>
<c:out value="${param.city}" /> <br>



<form action="test_bean" method="post">
<table>
<tr>
<td>Nom:</td>
<td><input type="text" name="nom" /></td>
</tr>
<tr>
<td>Prenom:</td>
<td><input type="text" name="prenom" /></td>
</tr>
<tr>
<td>Ville:</td>
<td><input type="text" name="ville" /></td>
</tr>

<tr>
<td></td>
<td><input type="submit" name="submit" value="envoyer" /></td>
</tr>

</table>



</form>
</body>
</html>