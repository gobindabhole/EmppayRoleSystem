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
import com.example.demo.entitys.Employee;
import com.example.demo.entitys.Grade;
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
	    @PostMapping("/EmpreSucess")
	    public String EmpRegister(Map<String,Object> map,@ModelAttribute("stu") StudentRegistrationCls st)
	    {
//	    	System.out.println(st.getEmp_pin());
//	    	System.out.println(st.getEmp_state());
	    	
	    	
	    	  Employee emp=new Employee();
	    	  emp.setAddress(st.getEmployee_Adress());
	    	  emp.setCity(st.getEmp_city());
	    	  emp.setDob(st.getEmployee_DOB());
	    	  emp.setDoj(st.getEmployee_nameDOJ());
	    	  emp.setEmailId(st.getEmp_mail());
	    	  emp.setEmpName(st.getEmployee_name());
	    	  emp.setEmpTitle(st.getEmployee_title());
	    	  emp.setMobileNumber(st.getEmp_phno());
	    	  emp.setPanCard(st.getEmp_pancardno());
	    	  emp.setPanCard_photo(st.getEmp_pan());
	    	  emp.setState(st.getEmp_state());
	    	  emp.setPincode(st.getEmp_pin());
	    	  
	    	  Employee registerEmp = i.registerEmp(emp);
	    	  if(registerEmp!=null)
	    	  {
//	    		  System.out.println(st.getEmployee_name());
//	    		  System.out.println(registerEmp);
	    		  return "EmpS";
	    	  }
	    	  else
	    	  {
	    		  return"empr";
	    	  }
	    	    
	  	    }
	    

  	  @GetMapping("/addgrade")
  	  public String showGrade(Map<String,Object> map,@ModelAttribute("gradesystem")Grade gr)
  	  {
	    	map.put("gs",new Grade());
	        return "gradesystem"; // Resolves to WEB-INF/pages/Employee_registration.jsp
  	  }
  	  
  	  @PostMapping("/grade")
  	  public String showGradeSystem(Map<String,Object> map,@ModelAttribute("gradesystem")Grade gr)
  	  {
  		  Grade gs=new Grade();
  		  gs.setGradeName(gr.getGradeName());
  		  gs.setGradeShortName(gr.getGradeShortName());
  		  gs.setBasic(gr.getBasic());
  		  gs.setDearnessAllowance(gr.getDearnessAllowance());
  		  gs.setTravelAllowance(gr.getTravelAllowance());
  		  gs.setHra(gr.getHra());
  		  gs.setMedicalAllowance(gr.getMedicalAllowance());
  		  gs.setBonus(gr.getBonus());
  		  gs.setProvidentFund(gr.getProvidentFund());
  		  gs.setProfessionalTax(gr.getProfessionalTax());
  		  
  		  System.out.println(gs.getProvidentFund());
  		  Grade gradeRegister = i.gradeRegister(gs);
  		  if(gradeRegister!=null)
  		  return "gradesuccess";
  		  else
  			  return "gradesystem";
  	  }
  	  
  	  @GetMapping("/adddept")
  	  public String adddept(Map<String,Object> map)
  	  {
  		  return "";
  		  
  	  }
}

