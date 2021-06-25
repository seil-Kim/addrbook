<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "addrbookcon.addrbook" %>
    <%@ page import = "addrbookcon.addrbookDAO" %>
    <%@ page import = "java.util.*" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addrlist</title>
</head>
<body>
	<%
		addrbookDAO adao = new addrbookDAO();
		List<addrbook> addrlist = adao.readALLDB();
	%>
	<table border = "2">
		<tr>
			<td align = center>이름</td>
			<td align = center>email</td>
			<td align = center>전화번호</td>
			<td align = center>생일</td>
			<td align = center>회사</td>
			<td align = center>메모</td>
		</tr>
	<%
		for(int i = 0; i < addrlist.size(); i++){
			addrbook adb = (addrbook)addrlist.get(i);
			
			out.print("<tr><td>" + adb.getName() + "</td>");
			out.print("<td>" + adb.getEmail() + "</td>");
			out.print("<td>" + adb.getTel() + "</td>");
			out.print("<td>" + adb.getBirth() + "</td>");
			out.print("<td>" + adb.getCompany() + "</td>");
			out.print("<td>" + adb.getMemo() + "</td></tr>");
		}
	%>	
	</table>
	<h3 align = center><a href = "idx_Jsp.jsp?idx=home">[주소록 추가]</a></h3>
</body>
</html>