package com.test.spring.controller;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.spring.domain.SpringDTO;
import com.test.spring.persistence.SpringDAO;
import com.test.spring.persistence.SpringDAOImpl;

@Controller
public class Ex05Controller {
//	@RequestMapping(value="/ex05.do", method=RequestMethod.GET)
//	public String ex05() {
//		return"ex05";
//	}
//	
//	@RequestMapping(value="/ex05ok.do", method=RequestMethod.POST)
//	public String ex05ok() {
//		return"ex05ok";
//	}
	
	@GetMapping(value="/ex05.do")
	public String ex05() {
		return"ex05";
	}
	
//	@PostMapping(value="/ex05ok.do")
//	public String ex05ok(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
//		//데이터 수신
//		//- Servlet/JSP : req.getParameter(), req.getParameterValues()
//		
////		System.out.println(req == null);
////		System.out.println(resp == null);
////		System.out.println(session == null);
//		
//		String data = req.getParameter("data");
//		
//		req.setAttribute("data", data);
//		
//		return"ex05ok";
//	}
	
//	@PostMapping(value="/ex05ok.do")
//	public String ex05ok(@RequestParam(name="data") String data, Model model) {
//		
//		System.out.println(data);
//		
//		model.addAttribute("data", data);
//		
//		return "ex05ok";
//	}
	
//	@PostMapping(value="/ex05ok.do")
//	public String ex05ok(String data, Model model) {
//		
//		model.addAttribute("data", data);
//		
//		return "ex05ok";
//	}
	
//	@PostMapping(value="/ex05ok.do")
//	public String ex05ok(@RequestParam("name") String name,
//						 @RequestParam("age") String age,
//						 @RequestParam("address") String address,
//						 Model model) {
//		 
//		SpringDTO dto = new SpringDTO();
//		
//		dto.setName(name);
//		dto.setAge(age);
//		dto.setAddress(address);
//		
//		SpringDAO dao = new SpringDAOImpl();
//		
//		int result = dao.add(dto);
//		
//		model.addAttribute("result", result);
//		
//		
//		return "ex05ok";
//	}
	
//	@PostMapping(value="/ex05ok.do")
//	public String ex05ok(String name,
//						 String age,
//						 String address,
//						 Model model) {
//		 
//		SpringDTO dto = new SpringDTO();
//		
//		dto.setName(name);
//		dto.setAge(age);
//		dto.setAddress(address);
//		
//		SpringDAO dao = new SpringDAOImpl();
//		
//		int result = dao.add(dto);
//		
//		model.addAttribute("result", result);
//		
//		
//		return "ex05ok";
//	}
	
//	@PostMapping(value="/ex05ok.do")
//	public String ex05ok(SpringDTO dto, Model model) {
//		 		
//		SpringDAO dao = new SpringDAOImpl();
//		
//		int result = dao.add(dto);
//		
//		model.addAttribute("result", result);
//		
//		
//		return "ex05ok";
//	}
	
//	@PostMapping(value="/ex05ok.do")
//	public String ex05ok(SpringDTO dto,String seq , Model model) {
//		
//		SpringDAO dao = new SpringDAOImpl();
//		
//		int result = dao.add(dto);
//		
//		System.out.println(seq);
//		
//		model.addAttribute("result", result);
//		
//		
//		return "ex05ok";
//	}
	
//	@PostMapping(value="/ex05ok.do")
//	public String ex05ok(Model model, HttpServletRequest req) {
//		
//		String[] cb = req.getParameterValues("cb");
//		
//		System.out.println(Arrays.toString(cb));
//		
//		return "ex05ok";
//	}
	
//	@PostMapping(value="/ex05ok.do")
//	public String ex05ok(Model model,String[] cb) {
//		
//		System.out.println(Arrays.toString(cb));
//		
//		return "ex05ok";
//	}
	
	@PostMapping(value="/ex05ok.do")
	public String ex05ok(@ModelAttribute(name="data") String data) {
		
		return "ex05ok";
	}
}
