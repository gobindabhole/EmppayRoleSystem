package com.example.demo.Services;

import org.springframework.data.jpa.repository.JpaRepository;


import com.example.demo.entitys.Employee;

public interface IEmpMagService extends JpaRepository<Employee,Long>  {

}
