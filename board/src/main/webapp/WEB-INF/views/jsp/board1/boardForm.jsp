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

<!-- Bootstrap Core CSS -->
<link
	href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="resources/bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="resources/bower_components/datatables-responsive/css/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="resources/bower_components/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%-- <script src="<c:url value='/js/co.js' />"></script> --%>
<script src="js/co.js"></script>
<!-- <mvc:resources mapping="/js/**" location="/js/" /> dispatcher-servlet에 이것을써서 -->
<!-- 경로를 굳이 위위 처럼 하지  않는것 -->


</head>
<body>
	<div id="wrapper">

		<div id="page-wrapper">

			<form id="form1" name="form1" action="board1Save" method="post"
				enctype="multipart/form-data">

				<table class="table table-striped table-bordered table-hover">
					<tbody>
						<tr>
							<td>작성자</td>
							<td><input type="text" id="brdwriter" name="brdwriter"
								size="20" maxlength="20"
								value="<c:out value="${boardInfo.brdwriter}"/>"></td>
						</tr>
						<tr>
							<td>제목</td>
							<td><input type="text" id="brdtitle" name="brdtitle"
								size="70" maxlength="250"
								value="<c:out value="${boardInfo.brdtitle}"/>"></td>
						</tr>

						<tr>
							<td>내용</td>
							<td><textarea id="brdmemo" name="brdmemo" rows="5" cols="60"><c:out
										value="${boardInfo.brdmemo}" /></textarea></td>
						</tr>

						<tr>
							<td>첨부파일></td>
							<td>
								<c:forEach var="listview" items="${listview}"
									varStatus="status">
									<input type="checkbox" name="fileno"
										value="<c:out value="${listview.fileno}"/>">
									<a
										href="fileDownload?filename=<c:out value="${listview.filename}"/>&downname=<c:out value="${listview.realname}"/>">
										<c:out value="${listview.filename}" />
									</a>
									<c:out value="${listview.size2String()}" />
									<br />
								</c:forEach> 
										<input type="file" name="uploadfile" multiple="" >
									
							</td>
								
						</tr>
					</tbody>
				</table>
				<a href="#" class="btn" id=list>목록</a> <input type="hidden"
					name="brdno" value="<c:out value="${boardInfo.brdno}"/>"> <a
					href="#this" onclick="fn_formSubmit()">저장</a>
			</form>
			<script>
				// 		$(function(){
				// 			$("#list").on('click',function(){
				// 				<a href="board1Form"></a>
				// 			});
				// 		});
				$(function() {
					$("#list").click(function() {
						location.href = "/board/board1List";
					});
				});
			</script>

		</div>
	</div>
</body>
</html>
