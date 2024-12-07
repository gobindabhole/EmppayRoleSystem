package com.example.demo.Services;


import java.util.Map;

//import java.util.Optional;
//import java.util.function.Function;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entitys.Admin;
//import org.springframework.data.domain.Example;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.domain.Sort;
//import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
//
//import com.example.demo.entitys.Admin;
@Service
public class ImpAdminMagService  {

	private static final String String = null;
	@Autowired
	private IAdminMagService i;



	public boolean cheakUser(Map<String, Object> map)
	{
         String uname =(String) map.get("username");
         String pass =(String) map.get("pass");
         System.out.println(uname+ pass);
        Admin admin = i.getAdmin(uname, pass);
        System.out.println(admin);
        if(admin!=null)
        {
        	return true;
        }
        else
        {
        	return false;
        }
         
		
		
	}

}
