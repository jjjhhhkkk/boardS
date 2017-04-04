<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>



<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>board1</title>
</head>
<body>
<div id="wrapper">

		<div id="page-wrapper">
	<!-- 		<table border="1" style="width:600px"> -->
	<%-- 			<caption>게시판</caption> --%>
	<%-- 			<colgroup> --%>
	<%-- 				<col width='15%' /> --%>
	<%-- 				<col width='*%' /> --%>
	<%-- 			</colgroup> --%>
	<table class="table table-striped table-bordered table-hover">

		<!-- 			글 쓰기 폼(HTML)에서 텍스트 입력 박스 위치에 c:out테그로 각각의 값을 출력해서 작성 -->
		<tbody>
			<tr>
				<td>작성자</td>
				<td><c:out value="${boardInfo.brdwriter}" /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><c:out value="${boardInfo.brdtitle}" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><c:out value="${boardInfo.brdmemo}" /></td>
			</tr>
			
			<tr>
    			<td>첨부</td> 
			    <td>
			        <c:forEach var="listview" items="${listview}" varStatus="status">    
			            <a href="fileDownload?filename=<c:out value="${listview.filename}"/>&downname=<c:out value="${listview.realname }"/>"> 
			            <c:out value="${listview.filename}"/></a> <c:out value="${listview.size2String()}"/><br/>
			        </c:forEach>                    
			    </td> 
			</tr>

		</tbody>
	</table>
	<a href="#" onclick="history.back(-1)">돌아가기</a>
	<a href="board1Delete?brdno=<c:out value="${boardInfo.brdno}"/>">삭제</a>
	<a href="board1Form?brdno=<c:out value="${boardInfo.brdno}"/>">수정</a>
</div>
</div>
</body>

</html>
