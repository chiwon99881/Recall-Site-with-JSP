<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">

function searchGO() {
	if(search.value=="����"){
		top.frames[1].frames[1].location.href="BL_B_Outline.jsp"; /*frames.frames�� ���������Ӽº��� ��ù�������� 
																	�� �Ʒ��� 0�� 1�� �׸��� 0,1���������� ��ü������(top)�� �ڽ��̰� 
																	1�������ӿ��� �� 0�� 1�� �������� �ΰ��� ���� ���� ó�� ���Ʒ��� �ѹ� ������ 
																	������ ���ʿ��������� �������� ���������� ���°�*/
	}else if(search.value=="�����ϴ� ����"){
		top.frames[1].frames[1].location.href="BL_B_Check.jsp";
	}else if(search.value=="������������" || search.value=="��������" || search.value=="��������"){
		top.frames[1].frames[1].location.href="BL_B_FreeService.jsp";
	}else if(search.value=="������Ȳ"){
		top.frames[1].frames[1].location.href="BL_B_State.jsp";
	}else if(search.value=="���ݻ��" || search.value=="���ݻ�ʰ˻�"){
		top.frames[1].frames[1].location.href="BL_B_Case.jsp";
	}else if(search.value=="���� ��û"){
		top.frames[1].frames[1].location.href="BL_B_Subscribe.jsp";
	}else if(search.value=="���� ����"){
		top.frames[1].frames[1].location.href="BL_B_Modification.jsp";
	}else{
		alert("�˻� ����� �����ϴ� :(");
	}
}

</script>

</head>

<style type="text/css">
/*div�±׷� input�±׿� button�±׸� ��� ����� ,input�� button�±׿� ���� �Ӽ�����*/
div{width:400px; height:40px; border: 1px solid DodgerBlue; background:#ffffff; margin:auto;} /* margin:auto ��� ���� */
input{font-size:16px; width:325px; height:20px; padding:10px; border:0px; outline:none; float:left;}
button{width:50px; height:100%; border:0px; background:DodgerBlue; outline:none; float:right; color:#ffffff; cursor: pointer;}

</style>

<body>

<div>

<input type="text" name="search"><button onclick="searchGO()">�˻�</button>

</div>

</body>
</html>