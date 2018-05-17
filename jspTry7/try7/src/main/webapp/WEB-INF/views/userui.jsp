<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="FinalProjectStyling418.css">

<title>Welcome to CustomSD</title>
</head>
<body class = "body">
<a href="/index">
	<img src = "https://i.imgur.com/P2GI5Aw.png" 
	alt="Welcome" style ="width:300px; height:100px;"/>
</a>

<h3>Hello ${name}</h3>

<h4>Please type in search word(s), 
then choose if you want to 'AND' or 'OR' the words, 
then click search.</h4>

>Connection status </h3>
<% 
try {
/* Create string of connection url within specified format with machine name, 
port number and database name. Here machine name id localhost and 
database name is usermaster. */ 
String connectionURL = "jdbc:mysql://localhost:3306/cds"; 

// declare a connection by using Connection interface 
Connection connection = null; 

// Load JBBC driver "com.mysql.jdbc.Driver" 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 

/* Create a connection by using getConnection() method that takes parameters of 
string type connection url, user name and password to connect to database. */ 
connection = DriverManager.getConnection(connectionURL, "David", "password");

// check weather connection is established or not by isClosed() method 
if(!connection.isClosed())
%>	
<font size="+1" color="green"></b>
<% 
out.println("Connected successfully to MySQL");
connection.close();
}
catch(Exception ex){
%>
</font>
<font size="+1" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</font>

<div style="border:solid black"> 
	<h5>Please type in keywords and search</h5>
  	<form action="/userui" method="post"> 
    
  		<p> <font color="red"> ${errorMessage}</font></p>
  		
    	<p><input type="text" name="field1" placeholder="field 1"></p>
		<p><input type="text" name="field2" placeholder="field 2"></p>
		<p><input type="text" name="field3" placeholder="field 3"></p>
		<p><input type="text" name="field4" placeholder="field 4"></p>
		<p><input type="text" name="field5" placeholder="field 5"></p>
		<p><input type="text" name="field6" placeholder="field 6"></p>
		<p><input type="text" name="field7" placeholder="field 7"></p>
		<p><input type="text" name="field8" placeholder="field 8"></p>
		<p><input type="text" name="field9" placeholder="field 9"></p>
		<p><input type="text" name="field10" placeholder="field10"></p> <br>
    	<input class="button" type="button" value="AND" id="AND"/>
    	<input class="button" type="button" value="OR" id="OR"/> </br>
    	<input class="search" type="submit" value="Search"/>
  	</form>
 </div>
  	<%
	//String x = request.getParameter("AND");
   //if("AND".equals(x))
   //{
	   
	  %> <p> Feedback: You have clicked 'AND'/'OR'</p> 
<% //} %>
	
</body>
</html>