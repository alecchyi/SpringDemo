<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <div class="container">
      <hr class="featurette-divider">
      <div class="row">
      	<jsp:include page="./menu.jsp"></jsp:include>
        <div class="col-sm-9 col-md-10 main">
          <h3 style="border-bottom: 1px solid #efefef;padding-bottom:10px;">我的订单</h3>
          <ul class="nav nav-pills">
			  <li role="presentation" class="active"><a style="background-color:rgba(83, 183, 51, 0.78);" href="#">全部订单</a></li>
			  <li role="presentation"><a href="#">待付款</a></li>
			  <li role="presentation"><a href="#">待收货</a></li>
			</ul>
          <div class="navbar navbar-default">
		    <div class="row">
		    	<div class="col-md-5">
		    	  <a class="navbar-brand" href="#">
			        订单信息
			      </a>
		    	</div>
		      	<div class="col-md-2" style="text-align:right;">
		      		<a class="navbar-brand" href="#">收货人</a>
		      	</div>
		      	<div class="col-md-2" style="text-align:right;">
		      		<a class="navbar-brand" href="#">金额</a>
		      	</div>
		      	<div class="col-md-1" style="text-align:right;">
		      		<a class="navbar-brand" style="font-size:14px;padding:15px 5px;" href="#">状态</a>
		      	</div>
		      	<div class="col-md-2">
		      		<a class="navbar-brand" href="#">操作</a>
		      	</div>
		    </div>
	  </div>
          	<div class="row">
	          	<div class="col-md-12">
	          		<div class="panel panel-default">
					  <div class="panel-heading">
					  	<span>2016-07-12 20:31:37</span>
					  	<span>订单号：20303019803 </span>
					  	<span>飞利浦筑斐专卖店</span>
					  </div>
					  <div class="panel-body">
					  	<div class="row">
					  		<div class="col-md-5">
					  			<img alt="" src="/img/placeholder.png" style="width:80px;height:80px;"/>
					    		<span>艳猫大米</span>
					    		<span>X1</span>
					  		</div>
					  		<div class="col-md-2" style="text-align:right;">
					      		<a class="navbar-brand" href="#">Ruby</a>
					      	</div>
					      	<div class="col-md-2" style="text-align:right;">
					      		<a class="navbar-brand" href="#"></a>
					      		￥100
					      		<hr/>
					      		支付宝支付
					      	</div>
					      	<div class="col-md-1" style="text-align:right;">
					      		<a class="" href="#">已完成</a>
					      	</div>
					      	<div class="col-md-2">
					      		<a class="btn" href="#">再次购买</a>
					      	</div>
					  	</div>
					    
					  </div>
					</div>
	          	</div>
          </div>
        </div>
      </div>
	</div>