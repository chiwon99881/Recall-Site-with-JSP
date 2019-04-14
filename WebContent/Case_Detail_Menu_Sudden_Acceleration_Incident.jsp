<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<style type="text/css">
#center {
	position: absolute;
	text-align: center;
	top: 50%;
	left: 50%;
	width: 900px;
	height: 100%;
	border: 1px solid DodgerBlue;
	padding: -50px;
	overflow-y: auto;
	background-color: white;
	margin-top: -430px;
	margin-left: -450px;
}

.menu a {
	cursor: pointer;
}

.menu .hide {
	display: none;
}

ul {
	list-style: none;
}

a {
	display: block;
	text-decoration: none;
}

A:link {
	text-decoration: none;
	color: #646464;
}

A:visited {
	text-decoration: none;
	color: #646464;
}

A:active {
	text-decoration: none;
	color: #646464;
}

A:hover {
	text-decoration: none;
	color: DodgerBlue;
}

table {
	border-top: 1px solid #444444;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid #444444;
	padding: 10px;
	border-right: hidden;
	border-left: hidden;
}
</style>

<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script>
	// html dom 이 다 로딩된 후 실행된다.
	$(document).ready(function() {
		// memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
		$(".menu>a").click(function() {
			// 현재 클릭한 태그가 a 이기 때문에
			// a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
			$(this).next("ul").toggleClass("hide");
		});
	});
</script>

<body>
	<%
		request.setCharacterEncoding("euc-kr");

		String cp = request.getParameter("_cp");
		String cn = request.getParameter("_cn");

		Class.forName("com.mysql.jdbc.Driver");
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:9999/recall_csv", "root", "1234");
			Statement stmt = conn.createStatement();

			ResultSet rs = stmt.executeQuery(
					"select * from recall_car,recall_sai where recall_car.carname=recall_sai.carname and recall_car.carname='"
							+ cn + "'");
	%>
	<div id="center">
		<div>
			<ul>
				<%
					while (rs.next()) {

							String company = rs.getString("company");
							String carname = rs.getString("carname");
							String caryear = rs.getString("caryear");
							String incidentdate = rs.getString("incidentdate");
							String receiptdate = rs.getString("receiptdate");
							String incidentinfo = rs.getString("incidentinfo");
							String source = rs.getString("source");
				%>

				<li class="menu"><a><font size="5" face="맑은 고딕"><%=receiptdate%>
							신고</font></a>
					<ul class="hide">
						<p>
						<table border="1">
							<tr>
								<th width="100"><font face="맑은 고딕">세부차명</font></th>
								<td width="600"><font face="맑은 고딕"><%=caryear%> <%=carname%></font></td>
							</tr>
							<tr>
								<th width="100"><font face="맑은 고딕">사고발생일</font></th>
								<td width="600"><font face="맑은 고딕"><%=incidentdate%></font></td>
							</tr>
							<tr>
								<th width="100"><font face="맑은 고딕">세부내용</font></th>
								<td width="600"><font face="맑은 고딕"><%=incidentinfo%></font></td>
							</tr>
							<tr>
								<th width="100"><font face="맑은 고딕">출처</font></th>
								<td width="600"><font face="맑은 고딕"><%=source%></font></td>
							</tr>
						</table>
					</ul></li>
				<hr style="width: 96%; border: solid 1px DodgerBlue;">

				<%
	}
%>
			</ul>
		</div>
	</div>
	<% 
rs.close();
stmt.close();
conn.close();
}catch(Exception e) {
	e.printStackTrace();
}

%>

</body>
</html>