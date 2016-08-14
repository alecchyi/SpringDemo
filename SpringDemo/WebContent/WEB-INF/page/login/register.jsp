<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="navbar-wrapper">
        <nav class="navbar navbar-inverse navbar-static-top">
        		<div class="container">
        			<a class="btn btn-lg btn-link" href="/home">艳猫</a>
        		</div>
        </nav>
    </div>

    <div class="container">

      <div class="row" style="margin:50px auto;">
        <div class="col-md-7 col-md-push-5">
          <form class="form-signin form-horizontal">
            <h2 class="form-signin-heading">艳猫电商管理平台<span class="text-muted">用户注册</span></h2>
            <label for="inputEmail" >用户名：</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="请输入用户名" required autofocus>
            <label for="inputPassword" >密码</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="请输入长度大于6位的密码" required>
			<label for="inputPassword" >确认密码</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="请输入长度大于6位的密码" required>
            <button class="btn btn-lg btn-primary" type="submit">注册</button>
            <a  class="btn btn-lg btn-link" href="/login">已有账号，登录</a>
          </form>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="center-block" src="/img/placeholder.png" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

    </div>
