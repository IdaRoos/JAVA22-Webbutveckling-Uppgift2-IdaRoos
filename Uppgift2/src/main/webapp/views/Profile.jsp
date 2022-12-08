<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.Bean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 

<% 
if(session.getAttribute("isLoggedIn") != null) {
	Bean user = (Bean)session.getAttribute("isLoggedIn");
	out.print("<h1> Hello, welcome to your profile " + user.getUserName() + "!</h1>");
	
	if(request.getParameter("snack") != null) {
		out.print("Your favorite snack is " + request.getParameter("snack") + "."); 
		
	}
	%>
	<form action="<%=request.getContextPath()%>/views/Profile.jsp" name="favoritesnack" method="get">
<input type="text" name="snack" placeholder="Favorite snack"/>
<input type ="submit" value="Send">
</form> 

	<%
	out.print("<form action=\"" + request.getContextPath() + "/LogoutSessionServlet\" method=\"POST\">");
	out.print("<p>Press this button to log out:</p>");
	out.print("<input type=\"submit\" value=\"Logout\" />");
	out.print("</form>");
	
} else {
	response.sendRedirect("../index.jsp");
	
}
%>

</body>
</html>