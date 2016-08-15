package com.abdus.java.spring.example.employee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abdus.java.spring.example.employee.domain.Employee;

/**
 * 
 * @author abdus mondal
 *
 */

@Controller
public class EmployeeController {
	
		
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String employee(@ModelAttribute("userform") Employee employee, BindingResult bindfResult,Model model) {
		 
		return "registrationForm";
	}
	
	   
	@RequestMapping(value = "/dashboard", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute("userform")Employee employee, ModelMap model) {
	     
		 /*model.addAttribute("name", employee.getName());
	      model.addAttribute("age", employee.getAge());
	      model.addAttribute("empId", employee.getEmpId());
	      model.addAttribute("salary", employee.getSalary());*/
		
		
		model.addAttribute("empdetails", employee);
		
	      return "dashboard";
	   }
}
