<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<script type="text/javascript">
function check() {
	  if(modi._name.value == "" || modi._tel.value==""|| modi._relation.value=="" || modi._carnum.value=="" || modi._cause.value=="" || modi._coporname.value=="" || 
			  modi._birth.value=="" || modi._pw.value=="" ) {
		    alert("필수항목을 반드시 입력해 주세요!");
		    return false;
		  }
		  else 
			return true;
		}

</script>

<body>
<%
request.setCharacterEncoding("euc-kr");

String name = (String)request.getSession().getAttribute("name");
String pw = (String)request.getSession().getAttribute("pw");
String tel = (String)request.getSession().getAttribute("tel");
String email = (String)request.getSession().getAttribute("email");
String relation = (String)request.getSession().getAttribute("relation");
String carnum = (String)request.getSession().getAttribute("carnum");
String coporname = (String)request.getSession().getAttribute("coporname");
String birth = (String)request.getSession().getAttribute("birth");
String cause = (String)request.getSession().getAttribute("cause");



%>
<form action = "Modification_Save.jsp" method ="post" target="Modification_Bottom" name="modi" onsubmit="return check()">
<p><img src="Photo/light.PNG" width="25" height="25" align="bottom" border="1"><strong> 신청인정보</strong><p>

<table border="2">
<tr><td colspan="110" bgcolor="lightgray"><strong>*이름</strong></td><td colspan="50" align="left"><input type="text" name="_name" value="<%=name%>" style="width:220px; background-color:gray;" readonly></td></tr>
<tr><td colspan="110" bgcolor="lightgray"><strong>*전화번호</strong></td><td colspan="50"><input type="text" name="_tel" value="<%=tel%>"style="width:220px;">&nbsp;&nbsp;(- 없이)</td></tr>
<tr><td colspan="110" bgcolor="lightgray"><strong>Email</strong></td><td colspan="50"><input type="text" name="_mail" value="<%=email%>"style="width:220px;"></td></tr>

</table>

<p><img src="Photo/light.PNG" width="25" height="25" align="bottom" border="1"><strong> 자동차정보</strong><p>

<table border="2">
<tr><td colspan="15" bgcolor="lightgray"><strong>*소유인과의관계</strong></td><td align="left"><input type="radio" name="_relation" value="본인" checked="checked" >본인<input type="radio" name="_relation" value="타인명의">타인명의</td></tr>
<tr><td colspan="15" bgcolor="lightgray"><strong>*자동차등록번호</strong></td><td colspan="45"><input type="text" name="_carnum" value="<%=carnum%>"style="width:220px;">&nbsp;&nbsp;(예 12가1234)</td></tr>
<tr><td colspan="15" bgcolor="lightgray"><strong>*리콜사유</strong></td><td colspan="45"><input type="text" name="_cause" value="<%=cause%>"style="width:220px;">&nbsp;&nbsp;(예 브레이크고장)</td></tr>
<tr><td colspan="15" bgcolor="lightgray"><strong>*소유인/법인명</strong></td><td colspan="45"><input type="text" name="_coporname" value="<%=coporname%>"style="width:220px;"></td></tr>
<tr><td colspan="15" bgcolor="lightgray"><strong>*생년월일/성별(7자리) 또는<br>사업자등록번호(앞 7자리)</strong></td><td colspan="50"><input type="text" name="_birth" value="<%=birth%>"style="width:220px;height:25px;"></td></tr>
<tr><td colspan="15" bgcolor="lightgray"><strong>*비밀번호</strong></td><td colspan="45"><input type="text" name="_pw" value="<%=pw%>"style="width:220px;"></td></tr>

</table> <br>

<input type="submit" value="수정" style="width:100px; height:50px;">&nbsp;
<input type="reset" value="취소" style="width:100px; height:50px;">
</form>



</body>
</html>