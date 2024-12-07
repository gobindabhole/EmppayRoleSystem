package com.example.demo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import com.example.demo.Services.ImpAdminMagService;
import com.example.demo.modelcls.LoginChk;

@Controller
public class viewController {
	
	@Autowired
	 private ImpAdminMagService  i;
	
	@GetMapping("/")
	public String viewhomePage(@ModelAttribute("Adminch") LoginChk lg)
	{
		System.out.println(lg);
		return "home";
	}
	@PostMapping("/login_try")
	public String login_verify(Map<String,Object> map,@ModelAttribute("Adminch")LoginChk lg )
	{
       map.put("username",lg.getLoginName());
       map.put("pass",lg.getPass());
		boolean cheakUser = i.cheakUser(map);
		if(cheakUser)
		{
			return "WelcomeAdmin";
		}
		else
		{
			return "home";
		}
		
		
	}

}
