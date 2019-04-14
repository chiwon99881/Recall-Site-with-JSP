<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<frameset rows="14,86" border="0">
<frame src="Case_Detail_Top.jsp"  name="detailTop"noresize>
<frame src="Case_Detail_Bottom.jsp" name="detailBottom" noresize>
</frameset>
<body>

<%
request.setCharacterEncoding("euc-kr");

String cp = request.getParameter("__cp");
String cn = request.getParameter("__cn");

session.setAttribute("_cp",cp);
session.setAttribute("_cn", cn);
%>
<h1></h1>
</body>
</html>