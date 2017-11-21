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

 <c:redirect url="test.jsp" >
 <c:param name="name" value="lili"></c:param>
  <c:param name="city" value="rabat"></c:param>
 
 </c:redirect>
 
 
<c:set var="name" value="laila" scope="session"/>    

<c:set var="city">
<c:out value="<b>rabat</b>" escapeXml="false"/>
</c:set>  

name: <c:out value="${name}" escapeXml="false"/>  <br>
city: <c:out value="${city}" escapeXml="false"/>  <br>

name: <c:out value="${nam}" escapeXml="false" default="val par defaut"/>   <br>

<c:remove var="name" scope="session"/>
name: <c:out value="${name}" escapeXml="false"/>  <br>

</body>
</html>