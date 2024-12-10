package com.example.demo.modelcls;


import java.time.LocalDate;



import jakarta.persistence.Lob;
import lombok.Data;

@Data
public class StudentRegistrationCls {
	private String employee_title;
	private String employee_name;
	private LocalDate employee_DOB;
	private LocalDate employee_nameDOJ;
	private String  employee_Adress;
	
	private String  emp_state;
	private String emp_city;
	private Integer emp_pin;
	private Long emp_phno;
	private String emp_mail;
	private Long emp_pancardno;
	
	 @Lob
	    private byte[]  emp_pan; 
	
	
	
	

}
