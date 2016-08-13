
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setBundle basename="com.apsis.collision.picc.nls.picc_order"></fmt:setBundle>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>${page_title}</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/ssp.ico" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width" />     
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />   
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/templatemo_main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/datatable/jquery.dataTables.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/art/ui-dialog.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/body.css">
	<jsp:include page="./common_var.jsp" />
	<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/datatable/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/templatemo_script.js"></script>
    <script src="${pageContext.request.contextPath}/js/art/dialog-min.js"></script>
</head>
<body>
  <div class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <div class="logo">
        	<img src="${pageContext.request.contextPath}/images/indexLogo.png" alt="logo" style="padding-top:4px;float:left;"/>
        	<h1 style="float:right;font: bold 25px Arial, Helvetica;color: #FFFFFF;">人保事故件采购平台</h1>
        </div>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button> 
      </div>   
    </div>
    
    <div class="template-page-wrapper">
      <div class="navbar-collapse collapse templatemo-sidebar">
      	<!--Nav bar-->
        <ul class="templatemo-sidebar-menu">
        	<c:forEach items="${menus}" var="menu">
        		<shiro:hasPermission name="${menu.menuCd}">
        			<li class="sub open">
        				<a href="${menu.pageurl}">${menu.menuName}</a>
        				<c:if test="${not empty menu.subMenus }">
        					<ul class="templatemo-submenu">
	        					<c:forEach items="${menu.subMenus}" var="subMenu">
        							<c:choose>
										<c:when test="${subMenu.selected eq true}">
											<shiro:hasPermission name="${subMenu.menuCd}">
												<li class="active"><a href="${subMenu.pageurl}">${subMenu.menuName}</a></li>
											</shiro:hasPermission>
										</c:when>
										<c:otherwise>
											<shiro:hasPermission name="${subMenu.menuCd}">
												<li><a href="${subMenu.pageurl}">${subMenu.menuName}</a></li>
											</shiro:hasPermission>
										</c:otherwise>
									</c:choose>
	        					</c:forEach>
        					</ul>
        				</c:if>
        			</li>
        		</shiro:hasPermission>
        	</c:forEach>
        </ul>
      </div>

      <div class="templatemo-content-wrapper">
        <div class="templatemo-content">
        	<!-- Breadcrumb-->
          
          <ol class="breadcrumb">
            <li class="active">${page_title}</li>
          </ol>
          
          <!--Head title-->
          <jsp:include page="${content_page }" />
          <!-- Manin content-->
        </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
              <h4 class="modal-title" id="myModalLabel">Are you sure you want to sign out?</h4>
            </div>
            <div class="modal-footer">
              <a href="sign-in.html" class="btn btn-primary">Yes</a>
              <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
            </div>
          </div>
        </div>
      </div>
      <footer class="templatemo-footer">
        <div class="templatemo-copyright">
          <p>Copyright &copy; <fmt:message key="global.company_name"/></p>
        </div>
      </footer>
    </div>
    
    <script type="text/javascript">
    // Line chart
    var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
    var lineChartData = {
      labels : ["January","February","March","April","May","June","July"],
      datasets : [
      {
        label: "My First dataset",
        fillColor : "rgba(220,220,220,0.2)",
        strokeColor : "rgba(220,220,220,1)",
        pointColor : "rgba(220,220,220,1)",
        pointStrokeColor : "#fff",
        pointHighlightFill : "#fff",
        pointHighlightStroke : "rgba(220,220,220,1)",
        data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      },
      {
        label: "My Second dataset",
        fillColor : "rgba(151,187,205,0.2)",
        strokeColor : "rgba(151,187,205,1)",
        pointColor : "rgba(151,187,205,1)",
        pointStrokeColor : "#fff",
        pointHighlightFill : "#fff",
        pointHighlightStroke : "rgba(151,187,205,1)",
        data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      }
      ]

    }

    /* window.onload = function(){
      var ctx_line = document.getElementById("templatemo-line-chart").getContext("2d");
      window.myLine = new Chart(ctx_line).Line(lineChartData, {
        responsive: true
      });
    }; */

    $('#myTab a').click(function (e) {
      e.preventDefault();
      $(this).tab('show');
    });

    $('#loading-example-btn').click(function () {
      var btn = $(this);
      btn.button('loading');
      // $.ajax(...).always(function () {
      //   btn.button('reset');
      // });
  });
  </script>
</body>

</html>