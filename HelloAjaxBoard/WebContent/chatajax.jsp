<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String chat = request.getParameter("chat"); 
	String message = (String) application.getAttribute("message"); 
	
	// 파일 로딩
	if(message == null) {
		application.setAttribute("message", "채팅서비스<br>");
		message = "채팅서비스<br>"; 
	} 
	
	// 파일 세이브 
	if( chat != null )  {
		message += chat + "<br>"; 
		application.setAttribute("message",message); 
		message = "ok"; 
	}
%><%=message%> 