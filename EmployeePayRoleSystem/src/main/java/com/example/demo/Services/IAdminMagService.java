package com.example.demo.Services;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.entitys.Admin;



interface IAdminMagService extends JpaRepository<Admin,Integer> {
	
	@Query("From Admin Where username=:str1 AND pass=:str2")
	public Admin getAdmin(String str1,String str2);
	

}
