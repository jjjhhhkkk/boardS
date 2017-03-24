<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jsp/cmm/include/taglibs.jsp" %>

<script type="text/javascript">
$(document).ready(function(){
	if("<spring:eval expression="@properties['message.type.default']" />" == "dialog"){

		if($("#_alertFrm").length == 0){
			var form = $('<form></form>').attr("id",'_alertFrm' ).attr("name", '_alertFrm').attr("method", 'POST');
	        $('body').append(form);
         }

		$("#_alertFrm").messageLayer(options={title:"<spring:message code="경고"/>", message:"${resultMessage}"});
	    $("#_alertFrm").messageLayer(options={title:"<spring:message code="경고"/>", message:"<mc:customBindErrors delimiter="<br/>" />"});

	}else if("<spring:eval expression="@properties['message.type.default']" />" == "dialog2"){
		if($("#_alertFrm").length == 0){
			var form = $('<form></form>').attr("id",'_alertFrm' ).attr("name", '_alertFrm').attr("method", 'POST');
	        $('body').append(form);
         }


// 		alert("${resultMessage}");
		$("#_alertFrm").messageLayer(options={title:"<spring:message code="경고"/>", message:"${resultMessage}"});
	    $("#_alertFrm").messageLayer(options={title:"<spring:message code="경고"/>", message:"<mc:customBindErrors delimiter="<br/>" />"});
	}else{
		if("${resultMessage}" != ""){
		    alert("${resultMessage}");
		}
		if("<mc:customBindErrors />" != ""){
			alert("<mc:customBindErrors delimiter="\\n" />");
		}
	}


    /*등록 버튼 제어*/
    if($('button').hasClass("btn btn-success")== true){    	
    	if('Y' != '<c:out value="${currentMenuInfo.wrtAuthYn}"/>') {
    		$(".btn-success").addClass("disabled");
    		//$(".btn-success").remove();
    	}

    };

    /*수정 버튼 제어*/
    if($('button').hasClass("btn btn-warning")== true){
    	if('Y' != '<c:out value="${currentMenuInfo.updAuthYn}"/>') {   		
    		$(".btn-warning").addClass("disabled");
    		//$(".btn-warning").remove();
    	}
    };

    /*삭제 버튼 제어*/
    if($('button').hasClass("btn btn-danger")== true){    	
    	if('Y' != '<c:out value="${currentMenuInfo.delAuthYn}"/>') {
    		$(".btn-danger").addClass("disabled");
    		//$(".btn-danger").remove();
    	}
    };


});


var AjaxCommonFunc = {
	    refreshCode : function() {
	    	$("#frmCommon").onAjaxSubmit(
	                options = {
	                    url         : "<c:url value="/code/ajaxTagCodeRefresh"/>",
	                    success : function(data) {
	                    	if(data){
	                    		CtlFunc.codeGrpList();
	                    	}else{
	                    		$("#frmCommon").messageLayer(options={title:"<spring:message code="알림"/>", message:"<spring:message code="처리중 에러가 발생 했습니다."/>"});
	                    	}
	                    },
	                    error : function(jqXHR, textStatus, errorThrown) {
	                    	$("#frmCommon").messageLayer(options={title:"<spring:message code="알림"/>", message:"<spring:message code="처리중 에러가 발생 했습니다."/>"});
	                    }
	                }

	        );
	    },
	    checkEvent:function(ev){
			 var evt_code = (window.netscape) ? ev.which : event.keyCode;
			   /* FF = ev.which, IE = keyCode */
			   if(evt_code != 8 && (evt_code < 48 || evt_code >57) ){
				   (ev.preventDefault()) ?  ev.preventDefault(): event.returnValue = false;
			   }
		 }
	};
</script>

<form id="frmCommon" name="frmCommon" method="post" ></form>