<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Add Product</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
<jsp:include page="/WEB-INF/views/quantri/layout/css.jsp"></jsp:include>



</head>

<body>
	<jsp:include page="/WEB-INF/views/quantri/layout/menu-top.jsp"></jsp:include>


	<div class="container tm-mt-big tm-mb-big">
		<div class="row">
			<div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
				<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
					<div class="row">
						<div class="col-12">
							<h2 class="tm-block-title d-inline-block">Add Product</h2>
						</div>
					</div>
					<c:if test="${not empty AB}">
				      	<div class="alert alert-success" role="alert" >
					    	${AB }
					    </div>
			      	</c:if>
					<div class="row tm-edit-product-row">
						<div class="col-xl-6 col-lg-6 col-md-12">
							<sf:form method="post" action="${base}/admin/add-product" modelAttribute="product" enctype="multipart/form-data" class="tm-edit-product-form">
								<sf:hidden path="id"/>
								<div class="form-group mb-3">
									<label for="title">Tên sản phẩm</label>
								<sf:input path="title" autocomplete="off" type="text" class="form-control" id="title" required="required"></sf:input>						
								</div>
								<div class="form-group mb-3">
									<label for="detail_description">Mô tả</label>
									<sf:textarea autocomplete="off" path="details" class="form-control summernote" id="detail_description" rows="3" required="required"></sf:textarea>
								</div>
								<div class="form-group mb-3">
									<label for="category">Danh mục sản phẩm</label>
								<sf:select path="categories.id" class="form-control1" id="category">
									<sf:options items="${categories}" itemValue="id" itemLabel="name" />
								</sf:select>
								</div>
								<div class="row">
									<div class="form-group mb-3 col-xs-12 col-sm-12">										
										<label for="short_description">Mô tả ngắn</label>
										<sf:textarea autocomplete="off" path="shortDes" class="form-control" placeholder="Short Description" id="short_description" rows="3" required="required"></sf:textarea>
									</div>
									<div class="form-group mb-3 col-xs-12 col-sm-6">
										<label for="price">Giá</label>
								<sf:input type="number" autocomplete="off" path="price" class="form-control" id="price" placeholder="Price" required="required"></sf:input>							
									</div>
									<div class="form-group mb-3 col-xs-12 col-sm-6">
										<label for="inventory">Tồn kho</label>
								<sf:input type="number" autocomplete="off" path="inventory" class="form-control" id="inventory" placeholder="inventory" required="required"></sf:input>							
									</div>
								</div>
						</div>
						<div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
							<div class="custom-file mt-3 mb-3">
								<input id="productAvatar" name="productAvatar" type="file" style="display: none;" /> 
								<input type="button" name="productAvatar" class="btn btn-primary btn-block mx-auto" value="Tải avatar lên" onclick="document.getElementById('productAvatar').click();" />
							</div>						
							<div class="tm-product-img-dummy mx-auto">
								<i class="fas fa-cloud-upload-alt tm-upload-icon"
									onclick="document.getElementById('ProductImages').click();">							
								</i>
							</div>
							<hr>
							<div class="tm-product-img-dummy mx-auto">
								<i class="fas fa-cloud-upload-alt tm-upload-icon"
									onclick="document.getElementById('ProductImages').click();">							
								</i>
							</div>
							<div class="custom-file mt-3 mb-3" style="position-botton: 10px;">
								<input id="fileProductPictures" name="fileProductPictures" type="file" style="display: none;" /> 
								<input type="button" name="fileProductPictures" class="btn btn-primary btn-block mx-auto" value="Tải ảnh phụ lên" onclick="document.getElementById('productAvatar').click();" />
							</div>
						</div>
						<div class="col-12">
							<button type="submit"
								class="btn btn-primary btn-block text-uppercase">Thêm sản phẩm</button>
						</div>					
						</sf:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/quantri/layout/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/quantri/layout/js.jsp"></jsp:include>
</body>
</html>
