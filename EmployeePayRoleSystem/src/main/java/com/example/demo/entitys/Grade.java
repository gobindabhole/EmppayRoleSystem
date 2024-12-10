package com.example.demo.entitys;

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

@Entity
@Data
@Table(name="grade_emppayroleSys")
@NoArgsConstructor
@AllArgsConstructor
public class Grade 
{
	@Id
	@SequenceGenerator(name="gen1", sequenceName = "Grade_seq",initialValue =1000,allocationSize = 20)
	@GeneratedValue(generator="gen1",strategy = GenerationType.SEQUENCE)
	private Integer gradeID;
	@NonNull
	private String gradeName;
	@NonNull
	private String gradeShortName;
	@NonNull
	private String basic;
	@NonNull
	private String dearnessAllowance;
	@NonNull
	private String travelAllowance;
	@NonNull
	private String hra;
	@NonNull
	private String medicalAllowance;
	@NonNull
	private String bonus;
	@NonNull
	private String providentFund;
	@NonNull
	private String professionalTax;

}
