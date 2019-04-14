<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">

function searchGO() {
	if(search.value=="개요"){
		top.frames[1].frames[1].location.href="BL_B_Outline.jsp"; /*frames.frames는 상위프레임셋부터 맨첫프레임의 
																	위 아래가 0번 1번 그리고 0,1번프레임은 전체프레임(top)의 자식이고 
																	1번프레임에서 또 0번 1번 프레임이 두개가 있음 내가 처음 위아래로 한번 나누고 
																	다음에 왼쪽오른쪽으로 나눴으니 저런식으로 쓰는거*/
	}else if(search.value=="자주하는 질문"){
		top.frames[1].frames[1].location.href="BL_B_Check.jsp";
	}else if(search.value=="무상점검정비" || search.value=="무상점검" || search.value=="무상정비"){
		top.frames[1].frames[1].location.href="BL_B_FreeService.jsp";
	}else if(search.value=="리콜현황"){
		top.frames[1].frames[1].location.href="BL_B_State.jsp";
	}else if(search.value=="리콜사례" || search.value=="리콜사례검색"){
		top.frames[1].frames[1].location.href="BL_B_Case.jsp";
	}else if(search.value=="서비스 신청"){
		top.frames[1].frames[1].location.href="BL_B_Subscribe.jsp";
	}else if(search.value=="서비스 수정"){
		top.frames[1].frames[1].location.href="BL_B_Modification.jsp";
	}else{
		alert("검색 결과가 없습니다 :(");
	}
}

</script>

</head>

<style type="text/css">
/*div태그로 input태그와 button태그를 묶어서 사용함 ,input과 button태그에 관한 속성정의*/
div{width:400px; height:40px; border: 1px solid DodgerBlue; background:#ffffff; margin:auto;} /* margin:auto 가운데 정렬 */
input{font-size:16px; width:325px; height:20px; padding:10px; border:0px; outline:none; float:left;}
button{width:50px; height:100%; border:0px; background:DodgerBlue; outline:none; float:right; color:#ffffff; cursor: pointer;}

</style>

<body>

<div>

<input type="text" name="search"><button onclick="searchGO()">검색</button>

</div>

</body>
</html>