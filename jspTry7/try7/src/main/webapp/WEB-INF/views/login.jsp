<%/*imported below by crt and space*/ %>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="FinalProjectStyling418.css">
<title>Login</title>
</head>
<body class="body">

<a href="/index">
	<img src = "https://i.imgur.com/w4oPDce.jpg" 
	alt="Welcome" style ="width:400px; height:100px;"/>
</a>

	<div style>
	<h1 id="underline">Customizable Data-Search Application</h1>
    
    <div>
    <h3 id="underline1">Please Log-in</h3>
		<form action="/login" method="post">
			<p>
				<font color="red"> ${errorMessage}</font>
			</p>
			<p><input type="text" name="jname" placeholder="username" />  
            <p><input type="password" name="jpassword" placeholder="password" /></p>
             <input class = "button" type="submit"
				value="Login" /></p>
		</form>
    </div>
	</div>

</body>
</html>