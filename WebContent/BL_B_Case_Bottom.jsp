<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>



<style type="text/css">
div{text-align:center;}

ul li {display:block; width:1000px;height:100px; line-height:50px;  border:2px solid lightGray; margin:auto;}
ul li img{vertical-align:middle; height:90px;}
a{display:block; text-decoration:none; }
A:link {text-decoration:none; color:#646464;}
A:visited {text-decoration:none; color:#646464;}
A:active {text-decoration:none; color:#646464;}
A:hover {text-decoration:none; color:DodgerBlue;}

</style>

<body>

<%
request.setCharacterEncoding("euc-kr");

String carname = request.getParameter("_carname");
try{
Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:9999/recall_csv","root","1234");

Statement stmt = conn.createStatement();
Statement stmt2 = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from recall_car where carname like '%"+carname+"%' or company like '%"+carname+"%'");
ResultSet rs2 = stmt2.executeQuery("select * from recall_car where carname like '%"+carname+"%' or company like '%"+carname+"%'");

if(rs.next()){
out.println("<ul>");

}else{
	%>
	<div>
	<img src="Photo/warn.png"><p>
	<font size="5" face="맑은 고딕">입력이 잘못되었거나 결함정보 제공 대상차종이 아닙니다.</font>
	</div>
<% 	 
}
while(rs2.next()){
	String cp = rs2.getString("company");
	String cn = rs2.getString("carname");
	
	 
	out.println("<li><a href='Case_Detail.jsp?__cp="+cp+"&__cn="+cn+"'><img src=Photo/light.PNG><font size=2 face=맑은 고딕>"+cp+"</font>&nbsp;&nbsp;&nbsp;&nbsp;<font size=5 face=맑은 고딕>"+cn+"</font></a></li>");
	out.println("<br>");

}
out.println("</ul>");


rs2.close();
rs.close();
stmt2.close();
stmt.close();
conn.close();

}catch(Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>