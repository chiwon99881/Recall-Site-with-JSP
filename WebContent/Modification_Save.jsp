<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");

String name = request.getParameter("_name");
String tel = request.getParameter("_tel");
String email = request.getParameter("_mail");
String relation = request.getParameter("_relation");
String carnum = request.getParameter("_carnum");
String coporname = request.getParameter("_coporname");
String birth = request.getParameter("_birth");
String pw = request.getParameter("_pw");
String cause = request.getParameter("_cause");

try{
Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:9999/recall_subscribe","root","1234");
Statement stmt = conn.createStatement();

stmt.executeUpdate("update subscriber set tel='"+tel+"',email='"+email+"',relation='"+relation+"',carnum='"+carnum+"',coporname='"+coporname+"',birth='"+birth+"',pw='"+pw+"',cause='"+cause+"' where name='"+name+"'");

out.println("<h1><font size=4 color=DodgeBlue face=맑은고딕>"+name+" 님 수정이 완료되었습니다.</font></h1>");

stmt.close();
conn.close();
}catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>