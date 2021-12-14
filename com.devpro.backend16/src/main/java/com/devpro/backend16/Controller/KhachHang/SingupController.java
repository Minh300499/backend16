package com.devpro.backend16.Controller.KhachHang;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SingupController {
	@RequestMapping(value = {"/singup"}, method = RequestMethod.GET)
	public String singup(final Model model, final HttpServletRequest request, final HttpServletResponse response) throws IOException{
		return "khachhang/Singup";
	}
}
