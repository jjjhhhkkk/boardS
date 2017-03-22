<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/WEB-INF/views/jsp/cmm/include/meta.jsp"%>
    <meta name="decorator" content="blank" />
<title>500</title>
</head>
<body>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Exception 500 </h3>
                    </div>
                    <div class="panel-body">
						<ul>
						    <li>500</li>
						    <li>Exception: <c:out value="${requestScope['javax.servlet.error.exception']}" /></li>
						    <li>Exception type: <c:out value="${requestScope['javax.servlet.error.exception_type']}" /></li>
						    <li>Exception message: <c:out value="${requestScope['javax.servlet.error.message']}" /></li>
						    <li>Request URI: <c:out value="${requestScope['javax.servlet.error.request_uri']}" /></li>
						    <li>Servlet name: <c:out value="${requestScope['javax.servlet.error.servlet_name']}" /></li>
						    <li>Status code: <c:out value="${requestScope['javax.servlet.error.status_code']}" /></li>
						</ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>