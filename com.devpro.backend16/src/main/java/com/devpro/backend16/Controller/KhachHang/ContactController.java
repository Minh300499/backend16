package com.devpro.backend16.Controller.KhachHang;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;


import com.devpro.backend16.components.Utilities;
import com.devpro.backend16.entities.Contact;
import com.devpro.backend16.services.ContactService;

// tao mot bean la mot controller
@Controller
public class ContactController implements HandlerExceptionResolver{

	@Autowired
	private ContactService contactService;
	
	// định nghĩa action phải sử dụng "@RequestMapping"
	/**
	 * @param model:    sử dụng để đẩy dữ liệu từ Controller -> View
	 * @param request:  Sử dụng để lấy ReuqestParam
	 * @param response:
	 * @throws IOException
	 */
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		// lấy theo name attribute trong thẻ html
//		String name = request.getParameter("name");
//		String email = request.getParameter("email");
//		String message = request.getParameter("message");
//		
//		model.addAttribute("TB", "Cảm ơn " + name + ", chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất!");

		// tạo 1 đối tượng contact là 1 entity
		Contact contact = new Contact();

		// đẩy contact xuống tầng View từ Controller
		model.addAttribute("contact", contact);

		// trả về đường dẫn tới view
		return "khachhang/contact";

	}

	// định nghĩa action phải sử dụng "@RequestMapping"
	/**
	 * @param model:    sử dụng để đẩy dữ liệu từ Controller -> View
	 * @param request:  Sử dụng để lấy ReuqestParam
	 * @param response:
	 * @throws IOException
	 */
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
//	public String post_simple(final Model model, final HttpServletRequest request, final HttpServletResponse response)
//			throws IOException {
//		// lấy theo name attribute trong thẻ html
//		String firstName = request.getParameter("firstName");
//		String email = request.getParameter("email");
//		String message = request.getParameter("message");
//
//		model.addAttribute("TB", "Cảm ơn " + firstName + ", chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất!");
//
//		// trả về đường dẫn tới view
//		return "khachhang/contact";
//	}

	// định nghĩa action phải sử dụng "@RequestMapping"
	/**
	 * @param model:    sử dụng để đẩy dữ liệu từ Controller -> View
	 * @param request:  Sử dụng để lấy ReuqestParam
	 * @param response:
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
	public String post_spring_form(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, final @ModelAttribute("contact") Contact contact,
			final @RequestParam("attachment") MultipartFile attachment) throws IllegalStateException, IOException {

		if (Utilities.getKilobytes(attachment.getSize()) > 100) {
			model.addAttribute("ERROR", "File attachment quá lớn");

			// trả về đường dẫn tới view
			return "khachhang/contact";
		}

		// lưu ảnh lên server
		attachment.transferTo(new File("E:/HocJava57/Backend16/com.devpro.backend16/src/main/resources/img/contact/" + attachment.getOriginalFilename()));

		// lưu contact vào trong database
		contactService.saveOrUpdate(contact);
		
		model.addAttribute("TB",
				"Cảm ơn " + contact.getFirstName() + ", chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất!");

		// sau khi xử lí xong thì đưa contact về trạng thái mới
		model.addAttribute("contact", new Contact());

		// trả về đường dẫn tới view
		return "khachhang/contact";

	}

	/**
	 * Sử dụng ajax
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @param contactModel
	 * @return
	 */
	@RequestMapping(value = { "/ajax/contact" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_contact(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, final @RequestBody Contact contact) {
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("message", "Cảm ơn bạn " + contact.getEmail() + ", Chúng tôi sẽ liên hệ sớm nhất!");
		return ResponseEntity.ok(jsonResult);
	}

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception ex) {
		ModelAndView modelAndView = new ModelAndView("file");
		if (ex instanceof MaxUploadSizeExceededException) {
			modelAndView.getModel().put("message", "File size exceeds limit!");
		}
		return modelAndView;
	}

}
