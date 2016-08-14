
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setBundle basename="com.apsis.collision.picc.nls.picc_order"></fmt:setBundle>

<html>
<head>
	<jsp:include page="./common_header.jsp" />
</head>
<body>
	<c:if test="${ layout == 'main' }">
  	<jsp:include page="./header.jsp" />
          <jsp:include page="${content_page }" />
          <jsp:include page="./quality.jsp"></jsp:include>
          <jsp:include page="./footer.jsp" />
		<jsp:include page="./top_side.jsp" />
	</c:if>
	<c:if test="${layout == 'login' }">
		<jsp:include page="${content_page }" />
		 <jsp:include page="./footer.jsp" />
	</c:if>
	 
	 <script src="/js/common.min.js"></script>
    <script src="/js/topMenu.js"></script>
    <script src="/js/yanmao.js" type="text/javascript"></script>
</body>

</html>