<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" href="resources/css/common.css'/>" type="text/css">
<style>
</style>
</head>
<body>
	<h3>회원가입</h3>
	<hr/>
	<form action="join.do" method="post">
		<table>
			<tr>
				<th>IDX_emplpoyees</th>
				<!-- 여긴 default auto_increment -->
				<td><input type="text" name="idx_employee"></td>
			</tr>
			<tr>
				<th>idx_department</th>
				<td><input type="text" name="idx_department"></td>
			</tr>
			<tr>
				<th>idx_title</th>
				<td><input type="text" name="idx_title"></td>
			</tr>
			<tr>
				<th>emp_id</th>
				<td><input type="text" name="emp_id"></td>
			</tr>
			<tr>
				<th>emp_pw</th>
				<td><input type="text" name="emp_pw"></td>
			</tr>
			<tr>
				<th>emp_name</th>
				<td><input type="text" name="emp_name"></td>
			</tr>
			<tr>
				<th>emp_status</th>
				<!-- 여긴 default 재직 -->
				<td><input type="text" name="emp_status"></td>
			</tr>
			<tr>
				<th>emp_email</th>
				<td><input type="text" name="emp_email"></td>
			</tr>
			<tr>
				<th>emp_email_pw</th>
				<td><input type="text" name="emp_email_pw"></td>
			</tr>
			<tr>
				<th>emp_phone_number</th>
				<td><input type="text" name="emp_phone_number"></td>
			</tr>
			<tr>
				<th>emp_birth_date</th>
				<td><input type="text" name="emp_birth_date"></td>
			</tr>
			<tr>
				<th>emp_hire_date</th>
				<!-- 여기도 default 오늘 -->
				<td><input type="text" name="emp_hire_date"></td>
			</tr>
			<tr>
				<th>emp_term_date</th>
				<!-- 여긴 회원가입시 필요없음 -->
				<td><input type="text" name="emp_term_date"></td>
			</tr>
			<tr>
				<th>emp_address</th>
				<td><input type="text" name="emp_address"></td>
			</tr>
			<tr>
				<th>first_login</th>
				<td><input type="text" name="first_login"></td>
			</tr>
			
			<tr>
				<th colspan="2"><button>회원가입</button></th>
			</tr>	
		</table>
	</form>
</body>
<script>
	var msg = '${msg}';
	
	if (msg != '') {
		alert(msg);		
	}

</script>
</html>