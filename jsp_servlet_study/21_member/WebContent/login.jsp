<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 	String id = "";
 	//session.invalidate();
 	if (session.getAttribute("Valid") != null) {
 		//�α��� ���� -> main
 %>
<jsp:forward page="main.jsp"></jsp:forward>
 <%
 	} else if (session.getAttribute("id") != null) {
 		id = session.getAttribute("id").toString();
 	}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>�α��� ������ �Դϴ�.</h1>
	<form action="loginOk.jsp" method="post">
	���̵� : <input type="text" name="id" value="<%= id %>"><br>
	��й�ȣ : <input type="password" name="pw" value="">
	<br><br>
	<input type="submit" value="�α���">
	<input type="button" value="ȸ������" onclick="location='join.jsp'">
	</form>
</body>
</html>