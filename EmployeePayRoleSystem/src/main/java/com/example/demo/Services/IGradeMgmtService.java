package com.example.demo.Services;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entitys.Grade;

public interface IGradeMgmtService extends JpaRepository<Grade,Integer>
{

}
