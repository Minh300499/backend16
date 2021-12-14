package com.devpro.backend16.Controller.QuanTri;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.backend16.Controller.BaseController;
import com.devpro.backend16.entities.Product;
import com.devpro.backend16.services.CategoriesService;
import com.devpro.backend16.services.ProductService;
import com.devpro.backend16.dto.ProductSearchModel;

@Controller
public class AdminProductController extends BaseController{
	
	@Autowired
	private ProductService productService;

	@Autowired
	private CategoriesService categoriesService;

	@RequestMapping(value = { "/admin/product", "/admin/products" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		ProductSearchModel searchModel = new ProductSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		searchModel.categoryId = super.getInteger(request, "categoryId");
		
		model.addAttribute("productsWithPaging", productService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		return "quantri/products";
	}
	
	@RequestMapping(value = { "/admin/add-product" }, method = RequestMethod.GET)
	public String adminProductAddOrUpdate(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		// đẩy danh sách categories xuống
		//model.addAttribute("categories", categoriesService.findAll());

		// add sản phẩm mới
		model.addAttribute("product", new Product());

		return "quantri/add-product";
	}
	
	@RequestMapping(value = { "/admin/add-product/{productId}" }, method = RequestMethod.GET)
	public String adminProductEdit(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @PathVariable("productId") int productId) throws IOException {
		// đẩy danh sách categories xuống
//		model.addAttribute("categories", categoriesService.findAll());

		// lấy sản phẩm trong db
		Product product = productService.getById(productId);

		// edit sản phẩm
		model.addAttribute("product", product);

		return "quantri/add-product";
	}
	
	@RequestMapping(value = { "/admin/add-product" }, method = RequestMethod.POST)
	public String adminProductAddOrUpdate(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("product") Product product, // spring-form biding với
																							// product model
			@RequestParam("productAvatar") MultipartFile productAvatar, // hứng file đẩy lên
			@RequestParam("productPictures") MultipartFile[] productPictures // hứng file đẩy lên
	) throws Exception {
		
		model.addAttribute("productAvatar");
		// cần kiểm tra xem id của product
		// = null || = 0 thì thêm mới
		// ngược lại là chỉnh sửa
		if (product.getId() == null || product.getId() <= 0) { // thêm mới
			productService.add(product, productAvatar, productPictures);
			model.addAttribute("AB",
					"Đã thêm mới sản phẩm thành công");
		} else { // chỉnh sửa
			productService.update(product, productAvatar, productPictures);
			model.addAttribute("AB",
					"Đã chỉnh sửa sản phẩm thành công");
		}

		// MVC được cấu hình chỉ định vào thư mục /src/main/webapp/WEB-INF/views
		// để tìm các views
		// /WEB-INF/views/user/index.jsp
		return "redirect:/admin/product"; // đường dẫn tới View.
	}
}
