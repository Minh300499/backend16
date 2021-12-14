<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Trang Chủ</title>
  
  <jsp:include page="/WEB-INF/views/khachhang/layout/CSS.jsp"></jsp:include>
  <jsp:include page="/WEB-INF/views/khachhang/layout/Js.jsp"></jsp:include>
  
</head>
<body>
  <div class="wapper"> 
  <!-- common -->
  <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
  
  	<!-- header -->
    <jsp:include page="/WEB-INF/views/khachhang/layout/Header.jsp"></jsp:include>

	<!-- main -->
    <jsp:include page="/WEB-INF/views/khachhang/layout/Main.jsp"></jsp:include>
  </div>
	
	<!-- productlist -->
  	<jsp:include page="/WEB-INF/views/khachhang/layout/ProductList.jsp"></jsp:include>

  	<!-- footer -->
  	<jsp:include page="/WEB-INF/views/khachhang/layout/Footer.jsp"></jsp:include>
    
</body>
</html>