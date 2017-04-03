<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="page-wrapper">
		<h3>관리자메인페이지</h3>
		관리자 아이디 : ${sessionScope.admin.admin_id }<br /> 관리자 이름:
		${sessionScope.admin.admin_name }

	</div>


</body>
</html>