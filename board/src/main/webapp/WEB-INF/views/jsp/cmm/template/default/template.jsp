<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jsp/cmm/include/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/jsp/cmm/include/meta.jsp"%>
<%-- <title><spring:message code="홈페이지대표타이틀"/></title> --%>
<%@ include file="/WEB-INF/views/jsp/cmm/include/stylesheets.jsp"%>
<%@ include file="/WEB-INF/views/jsp/cmm/include/scripts.jsp"%>
<%@ include file="/WEB-INF/views/jsp/cmm/include/commonScripts.jsp"%>

<decorator:head />

<script type="text/javaScript" language="javascript" defer="defer">
var fileDefaultHtml = "파일열기";
var fileButtonHtml = "파일검색";
</script>

</head>

<body style="padding-bottom: 70px;">

    <!-- Navigation -->
    <div id="wrapper">
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation" style="margin-bottom:0">
    <%@ include file="/WEB-INF/views/jsp/cmm/template/default/header.jsp" %>
    <%@ include file="/WEB-INF/views/jsp/cmm/template/default/left.jsp" %>
    </nav>
    <decorator:body />

    <%@ include file="/WEB-INF/views/jsp/cmm/template/default/footer.jsp" %>
    </div>

</body>
</html>