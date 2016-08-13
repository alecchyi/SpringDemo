<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/page/share/header.jsp" %>
</head>
<body>
portal
<a href="javascript:void(0);" id="link">Link</a>
<% System.out.print("abc"); %>
${abc}
<script type="text/javascript">
jQuery(document).ready(function($){

	$("#link").click(function(){
		//alert(333);
		$.ajax({
			url:"update",
			dataType:"json",
			data:"name=ruby",
			type:"post",
			success:function(data){
				alert(data.username);
			},
			error:function(){
				alert("error");
			}
		});
	});
});
</script>
<hr/>
<p>hello</p>
</body>
</html>