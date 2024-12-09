<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add page</title>
</head>
<body>
<jsp:include page="index.jsp" />   
<br> <br>

<div style="text-align:center">
	<h2> Welcome to Addition page </h2> <br>
	
		<form action="add-two" method="post">
		
				Number1: <input type="text" name="n1"> <br><br>
				Number2: <input type="text" name="n2"> <br><br>
				${d1}
				<button type="submit"> add </button>
		
		</form>	

</div>

</body>
</html>