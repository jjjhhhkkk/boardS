<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jsp/cmm/include/taglibs.jsp" %>

 <div class="container-fluid">
            <div class="navbar-header" >
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/main/main"><i class="fa fa-sign-in fa-fw"></i> BD IOT</a>
            </div>
            <!-- /.navbar-header -->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <!-- <ul class="nav navbar-nav "> -->
		<!-- <ul class="nav navbar-top-links navbar-left"> -->

        <div id="navbar" class="collapse navbar-collapse">
		   <ul id="topMenu" class="nav navbar-top-links navbar-left  nav-pills">
			 <c:forEach var="list" items="${sessionScope.MEMBER_SESSION_INFO.maps.MEMBER_MENU_INFO}">
		        <c:if test="${list.menuYn ne 'N' and list.useYn ne 'N'}">
		        <li <c:if test="${fn:indexOf(currentMenuInfo.menuId , list.menuId)>-1}" >class="active"</c:if>><a href="<c:url value="${list.pageUrl}"/>"><c:out value="${list.menuNm}"/></a></li>
		        </c:if>
		    </c:forEach>

                <!--
	            <li class="active"><a href="#">Home</a></li>
	            <li><a href="#">Link</a></li>
	            <li><a href="#">Link</a></li>
	             -->
	        </ul>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#" onclick="javascript:AjaxCommonFunc.refreshCode();"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="<c:url value="/login/logout"/>"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->
		</div>
</div>

