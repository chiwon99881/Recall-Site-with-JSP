<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<style type="text/css">

.tabWrap { width: 1460px; height: 50px; text-align:center; margin:auto;}
	.tab_Menu { margin: 0px; padding: 0px; list-style: none; display:inline-block;}
	.tabMenu { width: 225px; margin: auto; text-align: center; border: 1px solid DodgerBlue;
			   padding-top: 10px; padding-bottom: 10px; float: left;}
		.tabMenu a { color: Grey; font-weight: bold; text-decoration: none;}
.carMenu { width: 454px; height:40px; margin: auto; text-align: center; border: 1px solid DodgerBlue;
			   padding-top: 10px; padding-bottom: 10px; float: left;}
div{text-align:center;}
}

</style>

<body>

<%
String cp = (String)session.getAttribute("_cp");
String cn = (String)session.getAttribute("_cn");
%>

<div class="tabWrap">
	<ul class="tab_Menu">
		<li class="carMenu">
			<font face="맑은 고딕">회사명: <%= cp %></font><br>
			<font face="맑은 고딕">차명: <%= cn %></font><p>
		</li>
	</ul>
</div>

<p>

<div class="tabWrap">
	<ul class="tab_Menu">
		<li class="tabMenu">
			<a href="Case_Detail_Menu_RecallCase.jsp?_cp=<%= cp %>&_cn=<%= cn %>" target="detailBottom" ><font face="맑은 고딕">리콜 사례</font></a>
		</li>
		<li class="tabMenu">
			<a href="Case_Detail_Menu_Sudden_Acceleration_Incident.jsp?_cp=<%= cp %>&_cn=<%= cn %>" target="detailBottom" ><font face="맑은 고딕">급발진 의심</font></a>
		</li>
	</ul>
</div>

</body>
</html>