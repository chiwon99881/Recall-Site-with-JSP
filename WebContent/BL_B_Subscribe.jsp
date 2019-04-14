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
	  if(sub._name.value == "" || sub._tel.value==""|| sub._relation.value=="" || sub._carnum.value=="" || sub._cause.value=="" || sub._coporname.value=="" || 
			  sub._birth.value=="" || sub._pw.value=="" ) {
		    alert("필수항목을 반드시 입력해 주세요!");
		    return false;
		  }
		  else 
		  	return true;
		}

</script>

<body>

<form action = "Subscribe_Save.jsp" method ="post" name="sub" onsubmit="return check()">
<p><img src="Photo/light.PNG" width="25" height="25" align="bottom" border="1"><strong> 신청인정보</strong><p>

<table border="2">
<tr><td colspan="110" bgcolor="lightgray"><strong>*이름</strong></td><td colspan="50" align="left"><input type="text" name="_name" style="width:220px;"></td></tr>
<tr><td colspan="110" bgcolor="lightgray"><strong>*전화번호</strong></td><td colspan="50"><input type="text" name="_tel" style="width:220px;">&nbsp;&nbsp;(- 없이)</td></tr>
<tr><td colspan="110" bgcolor="lightgray"><strong>Email</strong></td><td colspan="50"><input type="text" name="_mail" style="width:220px;"></td></tr>

</table>

<p><img src="Photo/light.PNG" width="25" height="25" align="bottom" border="1"><strong> 자동차정보</strong><p>

<table border="2">
<tr><td colspan="15" bgcolor="lightgray"><strong>*소유인과의관계</strong></td><td align="left"><input type="radio" name="_relation" value="본인" checked="checked" >본인<input type="radio" name="_relation" value="타인명의">타인명의</td></tr>
<tr><td colspan="15" bgcolor="lightgray"><strong>*자동차등록번호</strong></td><td colspan="45"><input type="text" name="_carnum" style="width:220px;">&nbsp;&nbsp;(예 12가1234)</td></tr>
<tr><td colspan="15" bgcolor="lightgray"><strong>*리콜사유</strong></td><td colspan="45"><input type="text" name="_cause" style="width:220px;">&nbsp;&nbsp;(예 브레이크고장)</td></tr>
<tr><td colspan="15" bgcolor="lightgray"><strong>*소유인/법인명</strong></td><td colspan="45"><input type="text" name="_coporname" style="width:220px;"></td></tr>
<tr><td colspan="15" bgcolor="lightgray"><strong>*생년월일/성별(7자리) 또는<br>사업자등록번호(앞 7자리)</strong></td><td colspan="50"><input type="text" name="_birth" style="width:220px;height:25px;"></td></tr>
<tr><td colspan="15" bgcolor="lightgray"><strong>*비밀번호</strong></td><td colspan="45"><input type="text" name="_pw" style="width:220px;"></td></tr>

</table> <br>

<input type="submit" value="신청" style="width:100px; height:50px;">&nbsp;
<input type="reset" value="취소" style="width:100px; height:50px;">
</form>






</body>
</html>