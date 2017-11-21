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
if (session.getAttribute("membre")!=null){
	response.sendRedirect("espace_membre.jsp");
}
else {
%>
<form action="login" method="post">

     Username: <input type="text" name="username"   /> <br>
     Password: <input type="text" name="password" />  <br>
                <input type="submit" name="submit"  value="envoyer"  />

<b style="color:red;">
<% 


/*String message=(String) request.getAttribute("message");

if(message!=null)
	out.println(message);*/
%>

<%}%>
</b>

${message}

</form>



</body>
</html>