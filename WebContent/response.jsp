<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculatrice</title>
</head>
<body>
<%
int op1 = integer.parseInt(request.getParemeter("op1"));
int op2 = integer.parseInt(request.getParemeter("op2"));
String operation = request.getParemeter("operation");
%>
<%!
float leresultat;
%>
<h2>réponse</h2>
<%
if (operation.equals("addition")){
leresultat=op1+op2;		
}
if(operation.equals("soustraction")){
	leresultat=op1-op2;
}
if(operation.equals("multiplication")){
	leresultat=op1*op2;
}
if(operation.equals("division")){
	if(op2==0)
	{ %>
	<jsp:forward page="erreur.html"/>
	<%
	}else{leresultat=op1/op2;}	
	}
}%>
</body>
</html>