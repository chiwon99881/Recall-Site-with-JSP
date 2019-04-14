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

String num = request.getParameter("_num");
String title = request.getParameter("_title");
String source = request.getParameter("_source");
String date = request.getParameter("_date");


for(int i=1; i<22; i++){
	if(num.equals(Integer.toString(i))){
		response.sendRedirect("FreeService_INDEX/FreeService_"+i+".jsp");
	}
}

%>
</body>
</html>