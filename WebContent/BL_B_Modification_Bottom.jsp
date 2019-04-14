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
<img src ="Photo/nodata.gif" width="800px" height ="250px">

<%

request.setCharacterEncoding("euc-kr");

String regname = request.getParameter("_regname");
String regpassword = request.getParameter("_regpassword");

Class.forName("com.mysql.jdbc.Driver");

try{
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:9999/recall_subscribe","root","1234");
	
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from subscriber where name='"+regname+"' and pw='"+regpassword+"'");
	
	while(rs.next()){
		String tel = rs.getString("tel");
		String email = rs.getString("email");
		String relation = rs.getString("relation");
		String carnum = rs.getString("carnum");
		String coporname = rs.getString("coporname");
		String birth = rs.getString("birth");
		String cause = rs.getString("cause");
		
		 if(regname.equals(rs.getString("name")) && regpassword.equals(rs.getString("pw"))){
			 	request.getSession().setAttribute("name",regname);
			 	request.getSession().setAttribute("pw", regpassword);
			 	request.getSession().setAttribute("tel", tel);
			 	request.getSession().setAttribute("email", email);
			 	request.getSession().setAttribute("relation", relation);
			 	request.getSession().setAttribute("carnum", carnum);
			 	request.getSession().setAttribute("coporname", coporname);
			 	request.getSession().setAttribute("birth", birth);
			 	request.getSession().setAttribute("cause", cause);
				response.sendRedirect("Modification_Check_Success.jsp");
			}
	}
	rs.close();
	stmt.close();
	conn.close();
	
}catch(Exception e){
	e.printStackTrace();
}


%>
</body>
</html>