<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Accounts - Product</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
<jsp:include page="/WEB-INF/views/quantri/layout/css.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
</head>

<body id="reportsPage">
	<div class="" id="home">
		<jsp:include page="/WEB-INF/views/quantri/layout/menu-top.jsp"></jsp:include>

		<div class="container mt-5">
			<div class="row tm-content-row">
				<div class="col-12 tm-block-col">
					<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
						<h2 class="tm-block-title">Danh sách tài khoản</h2>
						<p class="text-white">Tài khoản</p>
						<select class="custom-select">
							<option value="0">Chọn tài khoản</option>
							<option value="1">Quản trị viên</option>
							<option value="2">Nhân viên</option>
							<option value="3">Thương gia</option>
							<option value="4">Khách hàng</option>
						</select>
					</div>
				</div>
			</div>
			<!-- row -->
			<div class="row tm-content-row">
				<div class="tm-block-col tm-col-avatar">
					<div class="tm-bg-primary-dark tm-block tm-block-avatar">
						<h2 class="tm-block-title">Thay đổi ảnh đại diện</h2>
						<div class="tm-avatar-container">
							<img src="${base}/img-admin/avatar.png" alt="Avatar"
								class="tm-avatar img-fluid mb-4" /> <a href="#"
								class="tm-avatar-delete-link"> <i
								class="far fa-trash-alt tm-product-delete-icon"></i>
							</a>
						</div>
						<button class="btn btn-primary btn-block text-uppercase">
							Đăng tải ảnh mới</button>
					</div>
				</div>
				<div class="tm-block-col tm-col-account-settings">
					<div class="tm-bg-primary-dark tm-block tm-block-settings">
						<h2 class="tm-block-title">Cài đặt tài khoản</h2>
						<form action="" class="tm-signup-form row">
							<div class="form-group col-lg-6">
								<label for="name">Tên tài khoản</label> <input id="name"
									name="name" type="text" class="form-control validate" />
							</div>
							<div class="form-group col-lg-6">
								<label for="email">Nhập Email</label> <input id="email"
									name="email" type="email" class="form-control validate" />
							</div>
							<div class="form-group col-lg-6">
								<label for="password">Mật khẩu</label> <input id="password"
									name="password" type="password" class="form-control validate" />
							</div>
							<div class="form-group col-lg-6">
								<label for="password2">Nhập lại mật khẩu</label> <input
									id="password2" name="password2" type="password"
									class="form-control validate" />
							</div>
							<div class="form-group col-lg-6">
								<label for="phone">Số điện thoại</label> <input id="phone"
									name="phone" type="tel" class="form-control validate" />
							</div>
							<div class="form-group col-lg-6">
								<label class="tm-hide-sm">&nbsp;</label>
								<button type="submit"
									class="btn btn-primary btn-block text-uppercase">
									Cập nhật tài khoản</button>
							</div>
							<div class="col-12">
								<button type="submit"
									class="btn btn-primary btn-block text-uppercase">
									Xóa tài khoản</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/quantri/layout/js.jsp"></jsp:include>
	</div>
	<jsp:include page="/WEB-INF/views/quantri/layout/js.jsp"></jsp:include>
</body>
</html>
