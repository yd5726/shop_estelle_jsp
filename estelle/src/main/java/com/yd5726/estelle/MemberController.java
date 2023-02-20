package com.yd5726.estelle;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping("/member")
	public String member(Model model) {
		return "member";
	}
}
