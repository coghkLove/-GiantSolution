<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	$(function(){
		
		$("#all").click(function(){
			if($("#all").is(":checked")){
				$("[name=chk]").prop("checked",true);
// 				.prop
// 				.attr
//				동작만 하는게 prop
//				attr을 사용할경우 removeattr
//				prop을 사용할경우 true false
				
			}else{
				$("[name=chk]").prop("checked",false);
				
			}
		})
		
		$("[name=chk]").click(function(){
			var checkbox = $("[name=chk]").length;
			var checked = $("[name=chk]:checked").length;
			
			if(checkbox == checked){
				$("#all").prop("checked",true);
			}else{
				$("#all").prop("checked",false);
			}
			
			if($(this).is(":checked")){
				$("#dvTxt").append($(this).val());
			}else{
				$("#dvTxt").text( $("#dvTxt").text().replace($(this).val(),"") );
			}
			
		})
		
		
		$("#btn").click(function(){
			var checked = $("[name=chk]:checked").length;
			
			if(checked == 0){
				alert("항목을 체크");
			}else if( checked < 5 || $("#all").is(":checked")){
				alert("성공");
			}else{
				alert("실패");
			}
		})
	})
</script>
<style type="text/css">
	.cls {
		font-size: 100px;
	}
</style>
</head>
<body>
<div>
	<input type = "text" name = "txt" id = "txt" value = "100000">
	
</div>


<div>
	<input type = "checkbox" name = "all" id = "all"><label for = "all">전체</label>
	<input type = "button" name = "btn" id = "btn" value = "버튼">
</div>
<div>
	<c:forEach begin="1" end = "9" var = "i" varStatus="num">
		<label><input type = "checkbox" name = "chk" id = "chk${num.index }" value = "체크${num.index }">체크${num.index }</label>
	</c:forEach>
</div>
<div id = "dvTxt"></div>






</body>
</html>