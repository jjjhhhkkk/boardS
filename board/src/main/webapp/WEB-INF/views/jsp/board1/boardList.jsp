<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%-- <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
<%@ include file="/WEB-INF/views/jsp/cmm/include/taglibs.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/views/jsp/cmm/include/meta.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->




<script>
	function fn_formSubmit() {
		document.form1.submit();
	}
</script>
</head>




<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> -->
<!-- <title>board1</title> -->
<!-- </head> -->
<body>
	<div id="wrapper">

		<!-- 			<a class="navbar-brand" href="board1List">시작해보자</a> -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">

			<!-- /.navbar-header -->


			<!-- /.navbar-top-links -->

			



			<!-- /.navbar-static-side -->
		</nav>


		<div id="page-wrapper">

			<div class="row">
				<div class="col-lg-6">
					<h1 class="page-header">Tables</h1>
				</div>
				<!-- /.col-lg-12 -->


				<div class="col-lg-6">
					<h1 class="page-header"></h1>
				</div>
			</div>


			<!-- 							<table border="1" style="width: 600px"> -->
			<%-- 								<caption>게시판</caption> --%>

			<!-- 							<div class="row"> -->
			<!-- 								<div class="col-lg-6"> -->
			<!-- 									<div class="panel panel-default"> -->
			<!-- 										<div.0 class="panel-heading">게시판</div> -->
			<div class="row">
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading">

							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">

										<thead>
											<tr>
												<th>번호</th>
												<th>제목</th>
												<th>등록자</th>
												<th>등록일</th>
												<th>조회수</th>
												<th>첨부파일</th>
												<th>삭제</th>
												
											</tr>
										</thead>
										<tbody>
											<c:forEach var="listview" items="${listview}"
												varStatus="status">
												<!-- 			link 라는 변수에 링크설정 -->
												<c:url var="link" value="board1Read">
													<!-- 				brdno 을 가져온다 1Ctr로 -->
													<c:param name="brdno" value="${listview.brdno}" />
												</c:url>



												<!-- 												<td> -->
												<%-- 						<c:out value="${pageVO.totRow-((pageVO.page-1)*pageVO.displayRowCount + status.index)}"/>					 --%>
												<!-- 					</td> -->

												<tr>
													<td><c:out value="${listview.brdno}" /></td>
													<td><a href="${link}"><c:out
																value="${listview.brdtitle}" /></a></td>
													<td><c:out value="${listview.brdwriter}" /></td>
													<td>${listview.brddate}</td>
													<%-- 													<td><c:out value="${listview.brddate}" /></td> --%>
													<%-- 													<td><c:out value="${listview.brdhit}" /></td> --%>
													<td>${listview.brdhit}</td>
													<td>${listview.filecnt }</td>
													<td><input type="button" value="삭제"
														onclick="location.href='board1Delete?brdno=${listview.brdno}'"></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<%-- 									<c:if test="${pageVO.totPage>1}"> --%>
									<!-- 										<div class="paging"> -->
									<%-- 											<c:forEach var="i" begin="${pageVO.pageStart}" --%>
									<%-- 												end="${pageVO.pageEnd}" step="1"> --%>
									<%-- 												<c:url var="pageLink" value="board1List"> --%>
									<%-- 													<c:param name="page" value="${i}" /> --%>
									<%-- 												</c:url> --%>
									<%-- 												<c:choose> --%>
									<%-- 													<c:when test="${i eq pageVO.page}"> --%>
									<%-- 														<c:out value="${i}" /> --%>
									<%-- 													</c:when> --%>
									<%-- 													<c:otherwise> --%>
									<%-- 														<a href="${pageLink}"><c:out value="${i}" /></a> --%>
									<%-- 													</c:otherwise> --%>
									<%-- 												</c:choose> --%>
									<%-- 											</c:forEach> --%>
									<!-- 										</div> -->
									<!-- 										<br /> -->
									<%-- 									</c:if> --%>

									<form id="form1" name="form1" method="post">
										<jsp:include
											page="/WEB-INF/views/jsp/common/pagingforSubmit.jsp" />
										<div>
											<input type="checkbox" name="searchType" value="brdtitle"
												<c:if test="${fn:indexOf(searchVO.searchType, 'brdtitle')!=-1}">checked="checked"</c:if> />
											<label class="chkselect" for="searchType1">제목</label> <input
												type="checkbox" name="searchType" value="brdmemo"
												<c:if test="${fn:indexOf(searchVO.searchType, 'brdmemo')!=-1}">checked="checked"</c:if> />
											<label class="chkselect" for="searchType2">내용</label> <input
												type="text" name="searchKeyword" style="width: 150px;"
												maxlength="50"
												value='<c:out value="${searchVO.searchKeyword}"/>'
												onkeydown="if(event.keyCode == 13) { fn_formSubmit();}">
											<input name="btn_search" value="검색" class="btn_sch"
												type="button" onclick="fn_formSubmit()" />
										</div>
									</form>






								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- 		page-wrapper -->

	</div>
	<!-- wrapper -->

<!-- 	<!-- jQuery --> -->
<!-- 	<script src="resources/bower_components/jquery/dist/jquery.min.js"></script> -->

<!-- 	<!-- Bootstrap Core JavaScript --> -->
<!-- 	<script -->
<!-- 		src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script> -->

<!-- 	<!-- Metis Menu Plugin JavaScript --> -->
<!-- 	<script -->
<!-- 		src="resources/bower_components/metisMenu/dist/metisMenu.min.js"></script> -->

<!-- 	<!-- Morris Charts JavaScript --> -->
<!-- 	<script src="resources/bower_components/raphael/raphael-min.js"></script> -->
<!-- 	<script src="resources/bower_components/morrisjs/morris.min.js"></script> -->
<!-- 	<script src="resources/js/morris-data.js"></script> -->

<!-- 	<!-- Custom Theme JavaScript --> -->
<!-- 	<script src="resources/dist/js/sb-admin-2.js"0></script> -->




</body>
</html>
