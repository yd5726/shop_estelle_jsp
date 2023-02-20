package com.yd5726.estelle;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import product.ProductServiceImple;
import vo.ProductVO;

@Controller
public class ProductController {
	@Autowired
	private ProductServiceImple service;

	/*
	@RequestMapping("/bottomes")
	public String Bottomes(Model model) {
		List<ProductVO> list = service.product_list();
		model.addAttribute("list", list);
		
		return "clothes/bottomes";
	}
	*/
	
	@RequestMapping("/bottomes")
	public String bottomes_select(Model model, String select_kcode, HttpSession session) {
		HashMap<String, String> tempMap = new HashMap<String, String>();
		tempMap.put("select_kcode", select_kcode);
		session.setAttribute("select_kcode", select_kcode);
		
		List<ProductVO> kcode_list = service.kcode_list(tempMap);
		model.addAttribute("kcode_list", kcode_list);
		
		return "clothes/bottomes";
	}
}
