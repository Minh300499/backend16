<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Sản phẩm</title>
		<jsp:include page="/WEB-INF/views/khachhang/layout/CSS.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/khachhang/layout/Js.jsp"></jsp:include>
</head>
<body> 
  	<!-- header -->
    <jsp:include page="/WEB-INF/views/khachhang/layout/Header.jsp"></jsp:include>
    
	<div class="container bootdey" style="padding-top: 20px">
			<section class="panel">
		      <div class="panel-body">
		      	<div class="row">
		      		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-6">
		              <div class="pro-img-details">
		                  <img src="${base }/img/product-1.png" alt="">
		              </div>
		              <div class="pro-img-list">
		                  <a href="#">
		                      <img src="${base }/img/product-1.png" alt="">
		                  </a>
		                  <a href="#">
		                      <img src="${base }/img/product-5.png" alt="">
		                  </a>
		                  <a href="#">
		                      <img src="${base }/img/product-7.png" alt="">
		                  </a>
		                  <a href="#">
		                      <img src="${base }/img/product-8.png" alt="">
		                  </a>
		              </div>
		          </div>
		          <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-6">
		              <h4 class="pro-d-title">
		                  <a href="#" class="">
		                      Case máy tính i7-7700
		                  </a>
		              </h4>
			              <p>- Chip: i7-7700</p>
		                  <p>- Main: H410-K</p>
		                  <p>- Ram: 18Gb</p>
		                  <p>- Disk: 500Gb-SSD</p>
		              <hr>
		              <div class="product_meta">
		                  <span class="posted_in"> 
		                  	<strong>
		                  		Đường dẫn:
		                  	</strong> 
		                  	<a rel="tag" href="#">
		                  		Case
		                  	</a>, 
		                  	<a rel="tag" href="#">
		                  		Ram
		                  	</a>, <a rel="tag" href="#">
		                  		Main
		                  	</a>, <a rel="tag" href="#">
		                  		Card
		                  	</a>.
		                  </span>
		                  <span class="tagged_as">
		                  	<strong>
		                  		Tags:
		                  	</strong> 
		                  	<a rel="tag" href="#">
		                  		PC
		                  	</a>, 
		                  	<a rel="tag" href="#">
		                  		Maytinh
		                  	</a>.
		                  </span>
		              </div>
		              <hr>
		              <div class="m-bot15"> 
		              	<strong>
		              		Price : 
		              	</strong> 
		              	<span class="amount-old">
		              		16.000.000vnđ
		              	</span>  
		              	<span class="pro-price"> 
		              		14.000.000vnđ
		              	</span></div>
		              <div class="form-group">
		                  	<label>
		                  		Số lượng
		              		</label>
		                  <input type="quantiy" placeholder="1" class="form-control quantity">
		              </div>
		              <p>
		                  <button class="btn btn-round btn-danger" type="button"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</button>
		              </p>
		          </div>
		      	</div>	          
		      </div>
		  </section>
	</div>
	
	<!-- footer -->
  	<jsp:include page="/WEB-INF/views/khachhang/layout/Footer.jsp"></jsp:include>
</body>
</html>