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
	.tabMenu { width: 150px; margin: auto; text-align: center; border: 1px solid DodgerBlue;
			   padding-top: 10px; padding-bottom: 10px; float: left;}
		.tabMenu a { color: Grey; font-weight: bold; text-decoration: none;}


}

</style>

<body>
<div class="tabWrap">
	<ul class="tab_Menu">
		<li class="tabMenu">
			<a href="BL_B_Outline.jsp" target="bottomRight" ><font face="맑은 고딕">개요</font></a>
		</li>
		<li class="tabMenu">
			<a href="BL_B_State.jsp" target="bottomRight" ><font face="맑은 고딕">현황</font></a>
		</li>
		<li class="tabMenu">
			<a href="BL_B_FreeService.jsp" target="bottomRight" ><font face="맑은 고딕">무상점검ㆍ정비</font></a>
		</li>
		<li class="tabMenu">
			<a href="BL_B_Case.jsp" target="bottomRight" ><font face="맑은 고딕">리콜사례검색</font></a>
		</li>
		<li class="tabMenu">
			<a href="BL_B_Subscribe.jsp" target="bottomRight" ><font face="맑은 고딕">서비스 신청</font></a>
		</li>
		<li class="tabMenu">
			<a href="BL_B_Modification.jsp" target="bottomRight" ><font face="맑은 고딕">서비스 수정</font></a>
		</li>
	</ul>
</div>
</body>
</html>