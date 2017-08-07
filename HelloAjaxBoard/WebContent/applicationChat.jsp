<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>

<%
	String msg = " ";

	// 1. 1000배가 빠르다. 무조건 써야한다.
	// 2. 데이터를 한번에 가져온다. 

	BufferedReader br = new BufferedReader(new FileReader("c:/chat.txt"));

	String line = " ";

	// 내용이 몇줄인지 모르기 때문에 
	while ((line = br.readLine()) != null) {
		msg += line;
	}

	br.close();
	
	String chat = request.getParameter("chat");
	
	if (chat != null) {

		String id = (String) session.getAttribute("id");
		msg += "(" + id + ")" + chat + "<br>";
		// 저장하는 방법
		BufferedWriter bw = new BufferedWriter(new FileWriter("c:/chat.txt"));
		bw.write(msg);
		bw.close();
	}
%>ok!

