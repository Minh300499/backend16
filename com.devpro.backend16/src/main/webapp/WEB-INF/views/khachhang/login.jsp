<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>login</title>
	<jsp:include page="/WEB-INF/views/khachhang/layout/CSS.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/khachhang/layout/Js.jsp"></jsp:include>
</head>
<body>
	
<!-- header -->
    <jsp:include page="/WEB-INF/views/khachhang/layout/Header.jsp"></jsp:include>
    
<div class="container bootstrap snippets bootdey">  
    <div class="omb_login">
        <h3 class="omb_authTitle">Đăng nhập hoặc <a href="singup.html">Đăng ký</a></h3>
		<div class="row omb_row-sm-offset-3 omb_socialButtons">
    	    <div class="col-xs-4 col-sm-2">
		        <a href="#" class="btn btn-lg btn-block omb_btn-facebook">
			        <i class="fa fa-facebook visible-xs"></i>
			        <span class="hidden-xs">Facebook</span>
		        </a>
	        </div>
        	<div class="col-xs-4 col-sm-2">
		        <a href="#" class="btn btn-lg btn-block omb_btn-twitter">
			        <i class="fa fa-twitter visible-xs"></i>
			        <span class="hidden-xs">Twitter</span>
		        </a>
	        </div>	
        	<div class="col-xs-4 col-sm-2">
		        <a href="#" class="btn btn-lg btn-block omb_btn-google">
			        <i class="fa fa-google-plus visible-xs"></i>
			        <span class="hidden-xs">Google+</span>
		        </a>
	        </div>	
		</div>

		<div class="row omb_row-sm-offset-3 omb_loginOr">
			<div class="col-xs-12 col-sm-6">
				<hr class="omb_hrOr">
				<span class="omb_spanOr">or</span>
			</div>
		</div>

		<div class="row omb_row-sm-offset-3">
			<div class="col-xs-12 col-sm-6">	
			    <form class="omb_loginForm" action="" autocomplete="off" method="POST">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span>
						<input type="text" class="form-control" name="username" placeholder="email address">
					</div>
					<span class="help-block"></span>
										
					<div class="input-group" style="padding-top: 10px; ">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<input  type="password" class="form-control" name="password" placeholder="Password">
					</div>
                    <span class="help-block">Tài khoản hoặc mật khẩu không đúng.</span>

					<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
				</form>
			</div>
    	</div>
		<div class="row omb_row-sm-offset-3">
			<div class="col-xs-12 col-sm-3">
				<label class="checkbox">
					<input type="checkbox" value="remember-me">Lưu tài khoản.
				</label>
			</div>
			<div class="col-xs-12 col-sm-3">
				<p class="omb_forgotPwd">
					<a href="#">Quên mật khẩu?</a>
				</p>
			</div>
		</div>	    	
	</div>
  </div>
  	<!-- footer -->
  	<jsp:include page="/WEB-INF/views/khachhang/layout/Footer.jsp"></jsp:include>
</body>
</html>