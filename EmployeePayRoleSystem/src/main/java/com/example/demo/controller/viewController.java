package com.example.demo.controller;

import java.util.Map;

import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.aspectj.lang.reflect.CatchClauseSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Services.ImpAdminMagService;
import com.example.demo.entitys.Admin;
import com.example.demo.modelcls.LoginChk;
import com.example.demo.modelcls.StudentRegistrationCls;




@Controller
public class viewController {
	
	@Autowired
	 private ImpAdminMagService  i;
	
	String nameofAdmin;
	
	
	
	@GetMapping("/")
	public String viewhomePage(@ModelAttribute("Adminch") LoginChk lg)
	{
//		System.out.println(lg);
		return "home";
	}
	
	@PostMapping("/login_try")
	public String login_verify(Map<String,Object> map,@ModelAttribute("Adminch")LoginChk lg )
	{
       map.put("username",lg.getLoginName());
      map.put("pass",lg.getPass());
		boolean cheakUser =  i.cheakUser(map);
		if(cheakUser)
		{
			nameofAdmin=lg.getLoginName();
			return "WelcomeAdmin";
			
		    
		}
		else
		{
			return "home";
////		}
//		
//		i.register();
//		return "home";
//		
	}

		//commit 
}
	    @GetMapping("/addemp")
	    public String showEmployeeRegistration(Map<String,Object> map,@ModelAttribute("stu") StudentRegistrationCls st) {
	    	
	    	map.put("adminname", nameofAdmin );
	        return "empr"; // Resolves to WEB-INF/pages/Employee_registration.jsp
	        
	    }
}
