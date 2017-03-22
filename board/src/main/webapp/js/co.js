/**
 * 
 */
function fn_formSubmit(){
// 	var arr = $("tr:even");
// 	alert(arr);
	
// 	if ($(arr).val() == "") {
// 		return;
// 	}
	if ( $.trim($("#brdwriter").val()) == "") {
		alert("작성자를 입력해주세요.");
		$("#brdwriter").focus();
		return;
	}
	if ($.trim($("#brdtitle").val()) == "") {
		alert("글 제목을 입력해주세요.");
		$("#brdtitle").focus();
		return;
	}
	if ($.trim($("#brdmemo").val()) == "") {
		alert("글 내용을 입력해주세요.");
		$("#brdmemo").focus();
		return;
	}
	
	
	$("#form1").submit();
} 
