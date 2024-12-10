package com.example.demo.entitys;






import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name="Emppayrole")
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Employee 
{
	 @Id
	    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "emp_seq_gen")
	    @SequenceGenerator(
	        name = "emp_seq_gen",
	        sequenceName = "emp_seq", 
	        allocationSize = 50 // Match this value with the actual database sequence increment
	    )
	    private Long id;
	
	@NonNull
	@Column(name="emp_Title",length=30)
	private String empTitle;
	
	@NonNull
	@Column(name="emp_name",length=50)
	private String empName;
	
	@NonNull
	@Column(name="emp_dob")
	private LocalDate dob;

	@NonNull
	@Column(name="emp_doj")
	private LocalDate doj;
	
	@NonNull
	@Column(name="emp_Adress",length=50)
	private String address;
	
	@NonNull
	@Column(name="emp_State",length=50)
	private String state;
	
	
	@NonNull
	@Column(name="emp_city",length=20)
	private String city;
	
	@NonNull 
	@Column(name="emp_pin")
	private Integer pincode;
	
	@NonNull
	@Column(name="emp_ph")
	
	private  Long mobileNumber;
	
	@NonNull
	@Column(name="emp_mailid",length=50)
	private String emailId;
	
	@NonNull
	@Column(name="emp_pano")
	private Long panCard;
	
	@NonNull
	@Lob
	@Column(name="emp_pancard")
	private byte[] panCard_photo;
	
	//String To Date datatype change here
}