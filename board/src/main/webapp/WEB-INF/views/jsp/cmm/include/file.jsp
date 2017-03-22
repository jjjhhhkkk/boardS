<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jsp/cmm/include/taglibs.jsp" %>

    <link href="${pageContext.request.contextPath}/resources/js/jquery/plugin/css/jquery.fileupload.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/file.css" type="text/css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/js/jquery/vendor/jquery.ui.widget.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery/plugin/jquery.iframe-transport.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery/plugin/jquery.fileupload.js"></script>

    <script src="${pageContext.request.contextPath}/resources/js/common/cfileupload.js"></script>

	<script type="text/javaScript" language="javascript">
	    var FileFunc = {
	            deleteFile : function(processType, fileMasterKey, fileKey){
	                if($("#_fileFrm").length == 0){
	                   var form = $('<form></form>').attr("id",'_fileFrm' ).attr("name", '_fileFrm').attr("method", 'POST');
	                   $('body').append(form);
	                }

	                $("#_fileFrm").onAjaxSubmit(
	                        options = {
	                            url         : "<c:url value="/file/delete"/>?processType="+processType+"&fileMasterKey="+fileMasterKey+"&fileKey="+fileKey,
	                            validation : true,
	                            async : false,
	                            success : function(data) {
	                                $("#tr_"+fileKey).remove();
	                            },
	                            error : function(jqXHR, textStatus, errorThrown) {
	                                $("#frm").messageLayer(options={title:"<spring:message code="알림"/>", message:"시스템에 문제가 발생 하였습니다."});
	                                return false;
	                            }
	                        }
	                );
	            },
	            downloadFile : function(processType, fileMasterKey, fileKey){
	                if($("#_fileFrm").length == 0){
	                    var form = $('<form></form>').attr("id",'_fileFrm' ).attr("name", '_fileFrm').attr("method", 'POST');
	                    $('body').append(form);
	                 }

	                $("#_fileFrm").onSubmit(
	                        options = {
	                            url         : "<c:url value="/file/download"/>?processType="+processType+"&fileMasterKey="+fileMasterKey+"&fileKey="+fileKey
	                            }
	                 );
	            }
	    };
	</script>