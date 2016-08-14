<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="navbar-wrapper">
	<div class="container">
		<nav class="navbar navbar-inverse navbar-static-top"
			style="height: 70px; padding-top: 20px;">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">艳猫</a>
				</div>
				<div id="navbar">
					<div class='row'>
						<div class="col-md-2" style="text-align: right;">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"
								role="button" aria-expanded="false">所在地 <span id="place_span"></span><span class="caret"></span></a>
							<ul class="dropdown-menu" style="z-index: 1001;" role="menu">
								<li><a onclick="clickPlace(this)">大连</a></li>
                    <li><a onclick="clickPlace(this)">沈阳</a></li>
                    <li><a onclick="clickPlace(this)">鞍山</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">黑龙江</li>
                    <li><a onclick="clickPlace(this)">哈尔滨</a></li>
                    <li><a onclick="clickPlace(this)">鸡西</a></li>
							</ul>
						</div>
						<div class='col-md-6'>
							<div class='search-box'>
								<form class='search-form'>
									<input class='form-control' placeholder='例如: 艳猫大米' type='text'>
									<a class='btn btn-link search-btn' href="/search"
										>
										<i class='glyphicon glyphicon-search'></i>
									</a>
								</form>
							</div>
						</div>
						<div class="col-md-3" style="text-align: right;">
							<a href="/login">登录</a> <span>|</span> <a href="/register">注册</a> <span>|</span>
							<a href="/user">我的猫咪</a> <span>|</span> <a href="">网站导航</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</div>
</div>