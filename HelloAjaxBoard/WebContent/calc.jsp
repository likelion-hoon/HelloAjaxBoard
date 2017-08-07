<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String op = request.getParameter("op");
	int op1 = Integer.parseInt(request.getParameter("op1"));
	int op2 = Integer.parseInt(request.getParameter("op2"));
	
	out.println(""); 

	int result = 0;

	if (op.equals("add"))
		result = op1 + op2;
	else if (op.equals("sub"))
		result = op1 - op2;
	else if (op.equals("mul"))
		result = op1 * op2;
	else if (op.equals("div"))
		result = op1 / op2;
%> <!--  html코드와 json코드가 섞이면 안된다. -->
{
	"code" : "ok",  
	"result" : <%=result%>
}




