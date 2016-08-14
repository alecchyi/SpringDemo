<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<ul class="breadcrumb">
		<li><a href="#">全部商品</a> <span class="divider">/</span></li>
		<li><a href="#">大米</a> <span class="divider">/</span></li>
		<li class="active">艳猫</li>
	</ul>
	<div class="row">
		<div class="col-lg-9">
			<div class="row">
				<div class="col-md-5">
					<div id="preview" class="spec-preview">
						<span class="jqzoom"><img
							jqimg="http://www.jsdaima.com/Upload/1409909522/b1.jpg"
							src="http://www.jsdaima.com/Upload/1409909522/s1.jpg"
							style="width: 330px; height: 330px;" /></span>
					</div>
					<!--缩图开始-->
					<div class="spec-scroll">
						<a class="prev">&lt;</a> <a class="next">&gt;</a>
						<div class="items">
							<ul>
								<li><img alt="佳能"
									bimg="http://www.jsdaima.com/Upload/1409909522/b1.jpg"
									src="http://www.jsdaima.com/Upload/1409909522/s1.jpg"
									onmousemove="preview(this);"></li>
								<li><img alt="佳能"
									bimg="http://www.jsdaima.com/Upload/1409909522/b2.jpg"
									src="http://www.jsdaima.com/Upload/1409909522/s2.jpg"
									onmousemove="preview(this);"></li>
								<li><img alt="佳能"
									bimg="http://www.jsdaima.com/Upload/1409909522/b3.jpg"
									src="http://www.jsdaima.com/Upload/1409909522/s3.jpg"
									onmousemove="preview(this);"></li>
								<li><img alt="佳能"
									bimg="http://www.jsdaima.com/Upload/1409909522/b1.jpg"
									src="http://www.jsdaima.com/Upload/1409909522/s1.jpg"
									onmousemove="preview(this);"></li>
								<li><img alt="佳能"
									bimg="http://www.jsdaima.com/Upload/1409909522/b3.jpg"
									src="http://www.jsdaima.com/Upload/1409909522/s3.jpg"
									onmousemove="preview(this);"></li>
								<li><img alt="佳能"
									bimg="http://www.jsdaima.com/Upload/1409909522/b1.jpg"
									src="http://www.jsdaima.com/Upload/1409909522/s1.jpg"
									onmousemove="preview(this);"></li>
								<li><img alt="佳能"
									bimg="http://www.jsdaima.com/Upload/1409909522/b2.jpg"
									src="http://www.jsdaima.com/Upload/1409909522/s2.jpg"
									onmousemove="preview(this);"></li>
								<li><img alt="佳能"
									bimg="http://www.jsdaima.com/Upload/1409909522/b1.jpg"
									src="http://www.jsdaima.com/Upload/1409909522/s1.jpg"
									onmousemove="preview(this);"></li>
								<li><img alt="佳能"
									bimg="http://www.jsdaima.com/Upload/1409909522/b2.jpg"
									src="http://www.jsdaima.com/Upload/1409909522/s2.jpg"
									onmousemove="preview(this);"></li>
							</ul>
						</div>
					</div>

				</div>
				<div class="col-md-7" style="border: 1px solid #ebebeb;">
					<h4>艳猫大米</h4>
					<p style="line-height: 30px;">市场价：￥100</p>
					<p style="line-height: 30px;">喵咪售价：￥89</p>
					<p style="line-height: 200px;">配送至：大连</p>
					<div class="row">
						<div class="col-md-3">
							<div class="input-group">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">-</button>
								</span> <input type="text" class="form-control" placeholder="2">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">+</button>
								</span>
							</div>
						</div>
						<div class="col-md-9" style="text-align: right;">
							<button class="btn btn-danger">立即购买</button>
							<a class="btn btn-danger" href="./cart.html">加入购物车</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- /.col-lg-4 -->
		<div class="col-lg-3">
			<div
				style="border: 1px solid #efefef; display: block; width: 100%; height: 100%;">
				<p>品牌：艳猫</p>
				<p>产地：大连</p>
				<p>规格：5斤装</p>
				<p>商品编号：000101</p>
				<p>喵咪评价：</p>
			</div>
		</div>
	</div>
	<!-- /.row -->

	<hr class="featurette-divider">
	<div class="row">
		<div class="col-lg-3">
			<img class="img-rounded" src="/img/placeholder.png"
				alt="Generic placeholder image" width="100%" height="140">
			<h2>Heading</h2>
			<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis
				euismod. Nullam id dolor id nibh ultricies vehicula ut id elit.
				Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
				Praesent commodo cursus magna.</p>
			<p>
				<a class="btn btn-default" href="#" role="button">View details
					&raquo;</a>
			</p>
		</div>
		<div class="col-lg-9">
			<ul class="nav nav-tabs nav-justified">
				<li role="presentation" class="active"><a href="#home"
					aria-controls="home" role="tab" data-toggle="tab">喵星故事</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab">喵星服务</a></li>
				<li role="presentation"><a href="#messages"
					aria-controls="messages" role="tab" data-toggle="tab">喵星评论</a></li>
			</ul>
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="home">home..</div>
				<div role="tabpanel" class="tab-pane" id="profile">.profile..</div>
				<div role="tabpanel" class="tab-pane" id="messages">.msg..</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="/js/jquery.jqzoom.js"></script>
<script type="text/javascript" src="/js/base.js"></script>