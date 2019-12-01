<%@ page session="true" %>
<%
  response.setHeader("Cache-Control","no-cache"); 
  response.setHeader("Cache-Control","no-store"); 
  response.setDateHeader("Expires", 0); 
  response.setHeader("Pragma","no-cache"); 

  String login = (String)session.getAttribute("login"); //request.getParameter("login");
  String password = (String)session.getAttribute("password"); //request.getParameter("password");
  //String url = "main.jsp?login="+login+"&password="+password;
  
  if(login != null && password != null){
	  
  if(login.equals("zul") && password.equals("abc123")){
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main</title>
</head>
<body>
<center>
<br>
Personal Information for <%=login%><br>
<br>
<a href="main.jsp">Main Page</a>
</center>
</body>
</html>
<%
  }
  else{
%>
<jsp:forward page="form.jsp" /> 
<%	  
  }
  
}
  else {
%>
<jsp:forward page="form.jsp?error=1" />
<% 
} 
%>