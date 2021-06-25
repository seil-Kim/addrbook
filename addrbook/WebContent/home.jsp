<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home</title>
</head>
<body>
<form action = "insert.jsp">
	<h3 align = center><a href = "idx_Jsp.jsp?idx=addrlist">[주소록 목록으로]</a></h3>
	<table border = 2, align = center>
		<tr>
			<td align = center>이름</td>
			<td> <input type = "text" name = "name" size = "20">
		</tr>
		<tr>
			<td align = center>email</td>
			<td> <input type = "text" name = "email" size = "20">
		</tr>
		<tr>
			<td align = center>전화번호</td>
			<td> <input type = "text" name = "tel" size = "20">
		</tr>
		<tr>
			<td align = center>생 일</td>
			<td> <input type = "text" name = "birth" size = "20">
		</tr>
		<tr>
			<td align = center>회 사</td>
			<td> <input type = "text" name = "company" size = "20">
		</tr>
		<tr>
			<td align = center>메 모</td>
			<td> <input type = "text" name = "memo" size = "20">
		</tr>
		<tr>
			<td colspan = "2" align = "center">
				<input type = "submit" value = "저장">
				<input type = "reset" value = "취소">
         	</td>
		</tr>
	</table>
</form>
</body>
</html>