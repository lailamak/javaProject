<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.util.*"%>
  <%@ page isELIgnored="false" %>  <!-- si  true on pt pas utilier les expr EL ds la page, a partir de la version
   2.4 c par defaut false -->
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



on envoie un param nom a la requete et on l'affiche avec:
paramétre: ${param.nom} 
<br>


<%
HashMap<String,String> membres = new HashMap<String,String>();

List<String> noms = new ArrayList<String>();


noms.add("imane");
noms.add("aya");
noms.add("mohamed");


membres.put("laila", "111111");
membres.put("ayoub", "111111");
membres.put("hasna", "111111");
request.setAttribute("membres", membres);
request.setAttribute("noms", noms);

%>

 <!--  
récupération avec le HashMap
${membres["laila"]}    <br>

récupération a l'aide de Arraylist
${noms[2]}  <br>



les expressions arithmétiques et logiques!
${5+10} <br>
${5<2} <br>
   --> 
   
<jsp:useBean id="membre" class="beans.Membre" scope="page"></jsp:useBean>
<jsp:setProperty property="username" name="membre" value="laila"/>

${pageScope.membre.username }<br>
${pageScope.membre.password } <br>

${empty membre } 

<c:set target="${membre}" property="username" value="imane" />
<c:out value="${membre.username}" />


</body>
</html>