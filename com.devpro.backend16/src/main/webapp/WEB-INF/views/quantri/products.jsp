<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Product Page</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
<jsp:include page="/WEB-INF/views/quantri/layout/css.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
</head>

<body id="reportsPage">
	<jsp:include page="/WEB-INF/views/quantri/layout/menu-top.jsp"></jsp:include>

	<div class="container mt-5">
	<form class="form-inline" action="${base }/admin/product/list" method="get">
	
		<div class="d-flex flex-row">
			<input type="hidden" id="page" name="page" class="form-control">
			<input type="text" id="keyword" name="keyword" class="form-control" style="background-color: white" placeholder="Search" value="${searchModel.keyword }" style="margin-right: 5px;"> 
			<select class="form-control" name="categoryId" id="categoryId" style="margin-right: 5px;">
				<c:forEach items="${categories}" var="category">
					<option value="${category.id }">${category.name }</option>
				</c:forEach>
			</select>
			<button type="submit" id="btnSearch" name="btnSearch" value="Search"  class="btn btn-primary">Seach</button>
		</div>
							
		<div class="row tm-content-row">
			<div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
				<div class="tm-bg-primary-dark tm-block tm-block-products">
					<div class="tm-product-table-container">
						<table class="table table-hover tm-table-small tm-product-table">
							<thead>
								<tr>
									<th scope="col">&nbsp;</th>
									<th scope="col">Tên sản phẩm</th>
									<th scope="col">Giá</th>
									<th scope="col">Tồn kho</th>
									<th scope="col">Danh mục</th>
									<th scope="col">&nbsp;</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${productsWithPaging.data}" var="product" varStatus="loop">
									<tr>
										<th scope="row"><input type="checkbox" /></th>
										<td>${product.title }</td>
										<td>
											<fmt:setLocale value="vi_VN" scope="session" />
											<fmt:formatNumber value="${product.price }" type="currency" />
										</td>
										<td>
											${product.inventory }
										</td>
										<td>${product.categories.name }</td>
										<td>
											<a class="btn btn-primary" href="${base }/admin/add-product/${product.id}" role="button">Edit</a>											
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- table container -->
					<a href="/admin/add-product"
						class="btn btn-primary btn-block text-uppercase mb-3">Thêm sản
						phẩm mới</a>
					<button class="btn btn-primary btn-block text-uppercase">
						Xoá sản phẩm</button>
				</div>
			</div>
			<div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
				<div class="tm-bg-primary-dark tm-block tm-block-product-categories">
					<h2 class="tm-block-title">Danh mục sản phẩm</h2>
					<div class="tm-product-table-container">
						<table class="table tm-table-small tm-product-table">
							<tbody>
								<c:forEach items="${productsWithPaging.data}" var="product" varStatus="loop">
									<tr>
										<td>${product.categories.name }</td>
										<td class="text-center">
											<a href="#" class="tm-product-delete-link" onclick="DeleteCategory(${category.id})"> 
												<i class="far fa-trash-alt tm-product-delete-icon"></i>
											</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- table container -->
					<button class="btn btn-primary btn-block text-uppercase mb-3">
						Thêm danh mục mới</button>
				</div>
			</div>
		</div>
	</div>
	</form>
	<jsp:include page="/WEB-INF/views/quantri/layout/footer.jsp"></jsp:include>
	<script type="text/javascript">
			function DeleteProduct(productId) {
				
			}
		
			$( document ).ready(function() {
				$("#categoryId").val(${searchModel.categoryId});
				$("#paging").pagination({
					currentPage: ${productsWithPaging.currentPage},
			        items: ${productsWithPaging.totalItems},
			        itemsOnPage: 5,
			        cssStyle: 'dark-theme',
			        onPageClick: function(pageNumber, event) {
			        	$('#page').val(pageNumber);
			        	$('#btnSearch').trigger('click');
					},
			    });
			});
		</script>
	    <script>
      $(function() {
        $(".tm-product-name").on("click", function() {
          window.location.href = "edit-product.html";
        });
      });
    </script>
	<jsp:include page="/WEB-INF/views/quantri/layout/js.jsp"></jsp:include>

</body>
</html>