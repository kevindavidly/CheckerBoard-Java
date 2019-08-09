<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checker board</title>
<link rel="stylesheet" type="text/css" href="./main.css"/>
</head>
<body>

<!-- ----------------------------------------
Param requests
----------------------------------------- -->	
	<% 
	String height = request.getParameter("height");
	if (height == null){
		height = "5";
	}
	String width = request.getParameter("width");
	if (width == null){
		width = "10";
	}
	%>
	
<!-- ----------------------------------------
loops
----------------------------------------- -->	

	<h1>Checkerboard: <%= width %>w x <%=height %>h </h1>
		
	<table>
	
	<% for(int i = 0; i < Integer.parseInt(height); i++) { %>
	
	<tr>
	
	<% for(int j = 0; j < Integer.parseInt(width); j++) { %>
	
	<td class="boxes color<%= (i+j)%2+1 %>"> </td>	
	<% } %>
	
	
	</tr>
	
	<% } %>
	
	</table>
    

</body>
</html>