<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<script src="http://code.jquery.com/jquery.js"></script>
</head>

<form2 action="calc.jsp" method="POST">
	<input type="text" id="op1" name="op1" size="3" value="5"> 
	<select id="op" name="op">
		<option value="add" selected>+</option>
		<option value="sub" >-</option>
		<option value="mul" >*</option>
		<option value="div" >/</option>
	</select> <input type="text" id="op2" name="op2" size="3" value="2">
	<button id="calc">=</button>
	&nbsp;&nbsp; <input type="text" id="out" size="3">
</form2>

<script>
    // ajax 개념 
	$("#calc").click(function() {
		var q = 'calc.jsp?op1='+$("#op1").val() + '&op2=' + $("#op2").val() + '&op=' + $("#op").val(); 
		console.log(q); 
		
		$.ajax({ // 내부적으로 스레드로 돌아간다.
			url:q,
			// url이 성공했을때 함수 실행 
			// result는 서버에서 리턴 받는 변수
			dataType : 'json',
			success:function(data)  {
				// alert(result); 
				$("#out").val(data.code); 
			}
		}); 
		// 서버에 요청 = ajax
	});
</script>
</html>