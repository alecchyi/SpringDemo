<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <div class="container">
      <hr class="featurette-divider">
      <div class="row">
      	<jsp:include page="./menu.jsp"></jsp:include>
        <div class="col-sm-9 col-md-10 main">
          <h3 style="border-bottom: 1px solid #efefef;padding-bottom:10px;">我的资料</h3>
          <ul class="nav nav-tabs nav-justified">
			<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">个人信息</a></li>
    		<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">我的积分</a></li>
		  </ul>
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="home">
		    	<div class="row">
	          <div class="col-md-6">
				<div class="form-group">
			      <label for="firstname" class="col-sm-2 control-label">用户名</label>
			      <div class="col-sm-10">
			         小明
			      </div>
			   	</div>
	          </div>
          </div>
          <div class="row">
	          <div class="col-md-6">
				<div class="form-group">
			      <label for="firstname" class="col-sm-2 control-label">昵称</label>
			      <div class="col-sm-10">
			         <input type="text" class="form-control" id="firstname" 
			            placeholder="Ruby">
			      </div>
			   	</div>
	          </div>
          </div>
          <div class="row">
	          <div class="col-md-6">
				<div class="form-group">
			      <label for="firstname" class="col-sm-2 control-label">手机号</label>
			      <div class="col-sm-10">
			         <input type="text" class="form-control" id="firstname" 
			            placeholder="18838383838">
			      </div>
			   	</div>
	          </div>
          </div>
          <div class="row">
	          <div class="col-md-6">
				<div class="form-group">
			      <label for="firstname" class="col-sm-2 control-label">头像</label>
			      <div class="col-sm-10">
			         <img src="/img/placeholder.png" style="width:60px;height:60px;" />
			      </div>
			   	</div>
	          </div>
          </div>
          <div class="row">
	          <div class="col-md-6">
				<a class="btn btn-primary">保存</a>
	          </div>
          </div>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="profile">.profile..</div>
		  </div>
          
        </div>
      </div>
	</div>