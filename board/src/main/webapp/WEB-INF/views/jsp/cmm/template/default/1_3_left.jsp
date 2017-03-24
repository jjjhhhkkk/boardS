<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jsp/cmm/include/taglibs.jsp" %>
<%--             <span id="menuStatus" style="display: none;">${currentMenuInfo.menuId}</span> --%>
            <div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>
						<li><a href="index.html"><i class="fa fa-dashboard fa-fw"></i>
								1번</a></li>
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
								Table<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="/board1List">Table-List</a></li>
								<li><a href="board1Form">Write</a></li>
							</ul> <!-- /.nav-second-level --></li>
						
						<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>
								3번<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="#">Second Level Item</a></li>
								<li><a href="#">Second Level Item</a></li>
								<li><a href="#">Third Level <span class="fa arrow"></span></a>
									<ul class="nav nav-third-level">
										<li><a href="#">Third Level Item</a></li>
										<li><a href="#">Third Level Item</a></li>
										<li><a href="#">Third Level Item</a></li>
										<li><a href="#">Third Level Item</a></li>
									</ul> <!-- /.nav-third-level --></li>
							</ul> <!-- /.nav-second-level --></li>
						
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
            <!-- /.navbar-static-side -->

<!--

<div id="left_area">

    <c:forEach var="list1" items="${sessionScope.MEMBER_SESSION_INFO.maps.MEMBER_MENU_INFO}">
        <c:if test="${fn:indexOf(currentMenuInfo.menuId , list1.menuId)>-1}" >
        <ul class="s_menu">
            <c:if test="${list1.menuYn ne 'N' and list1.authYn ne 'N'}">
	            <h2><span>${list1.menuNm}</span></h2>
	            <c:forEach var="list2" items="${list1.menuList}">
	                <c:if test="${list2.menuYn ne 'N' and list2.authYn ne 'N'}">
		                <li><a href="${list2.pageUrl}"><c:if test="${fn:indexOf(currentMenuInfo.menuId, list2.menuId)>-1}"><strong></c:if>${list2.menuNm}<c:if test="${fn:indexOf(currentMenuInfo.menuId, list2.menuId)>-1}"></strong></c:if></a>
		                <c:forEach var="list3" items="${list2.menuList}" varStatus="status">
		                    <c:if test="${status.first}"><ul class="n_menu"></c:if>
		                    <c:if test="${list3.menuYn ne 'N' and list3.authYn ne 'N'}">
			                    <li><a href="${list3.pageUrl}"><c:if test="${fn:indexOf(currentMenuInfo.menuId, list3.menuId)>-1}"><strong></c:if>${list3.menuNm}<c:if test="${fn:indexOf(currentMenuInfo.menuId, list3.menuId)>-1}"></strong></c:if></a></li>
			                </c:if>
		                    <c:if test="${status.last}"></ul></c:if>
		                </c:forEach>
		                </li>
	                </c:if>
	            </c:forEach>
            </c:if>
        </ul>
        </c:if>
    </c:forEach>

</div>

-->