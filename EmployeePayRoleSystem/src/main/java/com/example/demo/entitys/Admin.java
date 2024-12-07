package com.example.demo.entitys;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name="Admin_emppayroleSys")
@Data
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor

public class Admin {
	
	@Column(name="Admin_id")
	
	@SequenceGenerator(name="gen1", sequenceName = "Admin_seq",initialValue =120,allocationSize = 7)
	@GeneratedValue(generator="gen1",strategy = GenerationType.SEQUENCE)
	@Id
	private Integer adminid;
	
	@NonNull
	@Column(name="Adminuser_name",length=50)
	private String username;
	@NonNull
	@Column(name="Admin_pass",length=25)
	private String pass;
	@NonNull
	@Column(name="Admin_Email",length=50)
	private String email;
	
	
	

}
