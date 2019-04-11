package com.cognizant.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cognizant.app.modal.User;
import com.cognizant.app.util.CollectionUtility;

@SuppressWarnings("deprecation")
@RestController
public class UserController {

	
	@GetMapping("/welcome")
	public ModelAndView firstPage(@AuthenticationPrincipal final UserDetails userDetails , HttpServletRequest request) {
		userDetails.getAuthorities().stream().forEach(x->System.err.println("value "+x));
		
//CsrfToken token = (CsrfToken) request.getAttribute("_csrf");
		
		
		//System.err.println("TOCKEN "+token.getToken());
		
		return new ModelAndView("welcome","name", userDetails.getUsername());
	}

	@GetMapping(value = "/addNewEmployee")
	public ModelAndView show(@AuthenticationPrincipal final UserDetails userDetails) {
		return new ModelAndView("addEmployee","name", userDetails.getUsername());
	}

	@PostMapping(value = "/addNewEmployee")
	public ModelAndView processRequest(@ModelAttribute("employee") User employee, @AuthenticationPrincipal final UserDetails userDetails, HttpServletRequest request) {
		
		
CsrfToken token = (CsrfToken) request.getAttribute("_csrf");
		
		
		System.err.println("TOCKEN "+token.getToken());
		ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("name", userDetails.getUsername());
		
		CollectionUtility.getListOfUsersRegistered().add(employee);
		//CollectionUtility.getListOfUsersRegistered().stream().forEach(x->x.getName());
		
		//System.err.println("employee data "+employee.getName()+" id "+employee.getEmpId());
		
		model.addObject("employees", CollectionUtility.getListOfUsersRegistered());
		return model;
	}

	@GetMapping("/getEmployees")
	public ModelAndView getEmployees(@AuthenticationPrincipal final UserDetails userDetails, HttpServletRequest request) {
		
		//CsrfToken token = (CsrfToken) request.getAttribute("_csrf");
		
		
		//System.err.println("TOCKEN "+token.getToken());
		
		
		ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("name", userDetails.getUsername());
		model.addObject("employees", CollectionUtility.getListOfUsersRegistered());
		return model;
	}
	
	@GetMapping("/processor")
	public String processor() {
		return "processing..";
	}
	
	
	

}
