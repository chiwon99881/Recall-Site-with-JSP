<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("euc-kr");

try{
	String year = request.getParameter("month");
	
	if(year == null) {
		%>
		<img src ="Photo/nodata.gif" width="800px" height ="250px">
		<% 
	}
	if(year.equals("2017")){
		response.sendRedirect("BL_B_State_2017.jsp");
	}else if(year.equals("2016")){
		response.sendRedirect("BL_B_State_2016.jsp");
	}else if(year.equals("2015")){
		response.sendRedirect("BL_B_State_2015.jsp");
	}
}catch(Exception e) {
	e.printStackTrace();
}
%>

</body>
</html>