<%@ page session="true" %>
<%
  response.setHeader("Cache-Control","no-cache"); 
  response.setHeader("Cache-Control","no-store"); 
  response.setDateHeader("Expires", 0); 
  response.setHeader("Pragma","no-cache"); 

  String login = request.getParameter("login");
  String password = request.getParameter("password");
  
  if(login != null && password != null){
	  
  
  //String url = "main.jsp?login="+login+"&password="+password;
  
  		if(login.equals("zul") && password.equals("abc123")){
  		 session.setAttribute("login", login);
  		 session.setAttribute("password",password);
%>
		<jsp:forward page="main.jsp" />
<%
 		 }
 		 else{
%>
		<jsp:forward page="form.jsp?error=1" />
<% 		}
  
  
 	}
  	  else {
%>
	  <jsp:forward page="form.jsp?error=1" />
<% 
  } 
%>