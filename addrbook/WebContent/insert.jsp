<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "addrbookcon.addrbookDAO" %>
    <%@ page import = "addrbookcon.addrbook" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert</title>
</head>
<body>
	<%
		addrbookDAO adao = new addrbookDAO();
		addrbook adb = new addrbook();
		
		adb.setName(request.getParameter("name"));
		adb.setEmail(request.getParameter("email"));
		adb.setTel(request.getParameter("tel"));
		adb.setBirth(request.getParameter("birth"));
		adb.setCompany(request.getParameter("company"));
		adb.setMemo(request.getParameter("memo"));
		
		adao.insertDB(adb);
		request.setAttribute("name", adb.getName());
		request.setAttribute("target", "home");
	%>
	<jsp:forward page = "addrbook.jsp"/>
</body>
</html>