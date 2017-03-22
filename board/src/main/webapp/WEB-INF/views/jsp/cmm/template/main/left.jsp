<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jsp/cmm/include/taglibs.jsp" %>

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                    <!-- 
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                         
                        </li>
                   -->   <!-- /input-group -->
                        <li>
                            <a href="/code/codeGrpList"><i class="fa fa-dashboard fa-fw"></i> 코드관리</a>
                        </li>



    <c:forEach var="list1" items="${sessionScope.MEMBER_SESSION_INFO.maps.MEMBER_MENU_INFO}"  varStatus="status1">

   <!-- menuId : ${currentMenuInfo.menuId} &nbsp;menuId :  ${list1.menuId} -->

    <c:if test="${list.menuYn ne 'N' and list.useYn ne 'N'}">
	    <li>
	        <a href="${list1.pageUrl}"><i class="fa fa-sitemap fa-fw"></i>${list1.menuNm} <c:if test="${fn:length(list1.menuList) > 0}"><span class="fa arrow"></span></c:if></a>


	          <c:forEach var="list2" items="${list1.menuList}" varStatus="status2">
		          <c:if test="${list2.menuYn ne 'N' and list2.useYn ne 'N'}">
		           <c:if test="${status2.first}"><ul class="nav nav-second-level"></c:if>
	                  <li>
	                      <a href="${list2.pageUrl}">${list2.menuNm} <c:if test="${fn:length(list2.menuList) > 1}"><span class="fa arrow"></span></c:if></a>
	                      <c:forEach var="list3" items="${list2.menuList}" varStatus="status3">
		                      <c:if test="${list3.menuYn ne 'N' and list3.useYn ne 'N'}">
		                          <c:if test="${status3.first}"><ul class="nav nav-third-level"></c:if>
                                        <li>
                                            <a href="${list3.pageUrl}">${list3.menuNm}</a>
                                        </li>

		                          <c:if test="${status3.last}"></ul></c:if>
		                      </c:if>
	                      </c:forEach>

	                  </li>
	              <c:if test="${status2.last}"></ul></c:if>
		          </c:if>
	          </c:forEach>
	    </li>
    </c:if>
    </c:forEach>


                        <li>
                            <a href="/resources/startbootstrap-sb-admin-2-1.0.7/pages/index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>

                        <li>
                            <a href="#"><i class="fa fa-bomb fa-fw"></i> BD<span class="fa arrow"></span></a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->

