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
Class.forName("com.mysql.jdbc.Driver");

try{
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:9999/recall_state","root","1234");


Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from state15");

out.println("<table border=2 >");

out.println("<tr bgcolor=Gray>");
out.println("<th rowspan=2 width=100><font color=white>해당월</font></th>");
out.println("<th colspan=2 width=100><font color=white>국내자동차</font></th>");
out.println("<th colspan=2 width=100><font color=white>수입자동차</font></th>");
out.println("<th colspan=2 width=100><font color=white>계</font></th>");
out.println("</tr>");

out.println("<tr bgcolor=lightgray>");
out.println("<td width=100 align=center>차종</td>");
out.println("<td width=100 align=center>대수</td>");
out.println("<td width=100 align=center>차종</td>");
out.println("<td width=100 align=center>대수</td>");
out.println("<td width=100 align=center>차종</td>");
out.println("<td width=100 align=center>대수</td>");
out.println("</tr>");

while(rs.next()){
	String mon = rs.getString("mon");
	String domestic_type = rs.getString("domestic_type");
	String domestic_amount = rs.getString("domestic_amount");
	String foreign_type = rs.getString("foreign_type");
	String foreign_amount = rs.getString("foreign_amount");
	String total_type = rs.getString("total_type");
	String total_amount = rs.getString("total_amount");
	
	out.println("<tr>");
	out.println("<td width=100 align=center><strong>" + mon + "</strong></td>");
	out.println("<td width=100 align=center>" + domestic_type + "</td>");
	out.println("<td width=100 align=center>" + domestic_amount + "</td>");
	out.println("<td width=100 align=center>" + foreign_type + "</td>");
	out.println("<td width=100 align=center>" + foreign_amount + "</td>");
	out.println("<td width=100 align=center>" + total_type + "</td>");
	out.println("<td width=100 align=center>" + total_amount + "</td>");
	out.println("</tr>");
}

out.println("</table>");


rs.close();
stmt.close();
conn.close(); 
}catch(Exception e) {
	e.printStackTrace();
}

%>
</body>
</html>