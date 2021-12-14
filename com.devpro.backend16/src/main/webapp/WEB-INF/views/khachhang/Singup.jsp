<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Đăng ký</title>
  		<jsp:include page="/WEB-INF/views/khachhang/layout/CSS.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/khachhang/layout/Js.jsp"></jsp:include>
 </head>
<body>
  	<!-- header -->
    <jsp:include page="/WEB-INF/views/khachhang/layout/Header.jsp"></jsp:include>
<div class="container">
  <div class="jumbotron text-center" style="min-height:400px;height:auto;">
    <div class="col-md-10 col-md-offset-2">
        <form class="form-horizontal" role="form">
            <div class="form-group text-center">
                <div class="col-sm-10 reg-icon">
                    <span class="fa fa-user fa-3x">Đăng ký tài khoản</span>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="name" placeholder="Name">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="Username" placeholder="Username">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-10">
                  <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-10">
                  <button type="submit" class="btn btn-info">
                    <span class="glyphicon glyphicon-share-alt"></span>
                    Đăng ký
                  </button>
                </div>
              </div>
        </form>
    </div>
  </div>
</div> 
	<!-- footer -->
  	<jsp:include page="/WEB-INF/views/khachhang/layout/Footer.jsp"></jsp:include>                                 
</body>
</html>