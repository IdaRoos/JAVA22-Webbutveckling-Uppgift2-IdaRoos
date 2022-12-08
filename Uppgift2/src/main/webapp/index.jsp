<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Uppgift 2</title>
</head>
<body>

<form action="<%=request.getContextPath()%>/LoginServlet" method="POST">
<input type="text" name="username" placeholder="Username"/>
<input type="password" name="password" placeholder="Password"/>
<input  type="submit" value="Login"/>

</form>
</body>
</html>