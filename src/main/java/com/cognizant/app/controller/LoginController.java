package com.cognizant.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cognizant.app.modal.User;
import com.cognizant.app.service.UserService;

@RestController
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	/*@GetMapping(value="/login")
	public ModelAndView login(String logout)
	{
		if(logout != null)
		{
			System.err.println("logout != null");
		}
		return new ModelAndView("login");
	}
	
	@GetMapping(value="/users")
	public ModelAndView loginData()
	{
		return new ModelAndView("login");
	}*/
	
	@GetMapping(value="/usersDetails")
	public @ResponseBody List<User> usersDetails()
	{
		return userService.getAllUsers();
	}
	
	
	@GetMapping(value="/surprise")
	public ModelAndView hackedUrl()
	{
		return new ModelAndView("surprise");
	}

}
