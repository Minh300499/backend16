package com.devpro.backend16.Controller.KhachHang;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
// tao mot bean la mot controller
@Controller
public class HomeController {
	
	@RequestMapping(value = {"/home", "/index", "/"}, method = RequestMethod.GET)
	public String home(final Model model, final HttpServletRequest request, final HttpServletResponse response) throws IOException{
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		model.addAttribute("TB", "Cam on " + name + ", Chung toi se phan hoi lai ban som nhat co the.");
		return "khachhang/index";
	}

	
}
