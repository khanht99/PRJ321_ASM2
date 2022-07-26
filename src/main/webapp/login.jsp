<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="./CSS/login.css">
</head>
<body>
	<div id="login">
		<div class="left">
			<h1>Sign in</h1>
			<form action="/PRJ321_ASM2/login.jsp">
			<% 
String email = request.getParameter("email");
String password = request.getParameter("password");

String emailWebXML = pageContext.getServletContext().getInitParameter("email");
String passwordWebXML = pageContext.getServletContext().getInitParameter("password");


if(email != null && password != null && (!email.equals(emailWebXML) || !passwordWebXML.equals(password))) {
	out.println("<p class=\"errorMsg\">Email or password is not correct</p>");
} else if(email != null && password != null && (email.equals(emailWebXML) && passwordWebXML.equals(password))) {
	request.getRequestDispatcher("index.jsp").forward(request, response);
}
%>
				<input name="email" placeholder="Enter your email"><br>
				<input name="password" placeholder="Enter your password">
				<p><a>Forgot your password?</a></p>
				<button type="submit">LOGIN</button>
			</form>
		</div>
		<div class="right">
			<h1>Welcome Back!</h1>
			<p>To keep connected with us please login with your personal info</p>
		</div>
	</div>
</body>
</html>