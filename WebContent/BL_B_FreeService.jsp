<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

A:link {text-decoration:none; color:#646464;}
A:visited {text-decoration:none; color:#646464;}
A:active {text-decoration:none; color:#646464;}
A:hover {text-decoration:none; color:DodgerBlue;}


</style>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");

try{
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:9999/recall_freeservice","root","1234");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from freeservice order by date ASC");
	
	out.println("<table border=1>");
	
	out.println("<tr bgcolor=Gray>");
	out.println("<th width=50><font color=white>번호</font></th>");
	out.println("<th width=500><font color=white>제목</font></th>");
	out.println("<th width=100><font color=white>출처</font></th>");
	out.println("<th width=100><font color=white>작성일</font></th>");
	out.println("</tr>");
	
	int i = 1;
	
	while(rs.next()){
		String num = rs.getString("num");
		String title = rs.getString("title");
		String source = rs.getString("source");
		String date = rs.getString("date");
		
		out.println("<tr>");
		out.println("<td width=50 align=center>"+i+"</td>");
		out.println("<td width=500 align=center><a href='FreeService_Check.jsp?_num="+num+"&_title="+title+"&_source="+source+"&_date="+date+"'>"+title+"</a></td>");
		out.println("<td width=100 align=center>"+source+"</td>");
		out.println("<td width=100 align=center>"+date+"</td>");
		out.println("</tr>");
		i++;
	}
	out.println("</table>");
	
	rs.close();
	stmt.close();
	conn.close();
}catch(Exception e){
	e.printStackTrace();
}




%>
</body>
</html>