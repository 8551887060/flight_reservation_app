package com.flight_reservation_app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flight_reservation_app.entities.User;
import com.flight_reservation_app.repositories.UserRepository;

@Controller
public class UserController {
	@Autowired
	private UserRepository userRepo;
	
	@RequestMapping("/showLogin")
	public String showLoginPage() {
		return"login/login";
	}
	
	//http://localhost:8080/flights/showRegistration
    @RequestMapping("/showRegistration")
	public String showRegistration() {
		return "login/create_registration";
	}
    @RequestMapping("/saveReg")
    public String saveReg(@ModelAttribute("user") User user) {
    	userRepo.save(user);
    	return "login/login";
    }
    @RequestMapping("/verifyLogin")
    public String verifyLogin(@RequestParam("email") String email,@RequestParam("password") String password,Model model) {
    	User user = userRepo.findByEmail(email);
    	if(user!=null) {
    		if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
        		return "findFlights";
        	}else {
        		model.addAttribute("error", "Invalid emailId/password");
        		return "login/login";
        	}	
    	}else {
    		model.addAttribute("error", "Invalid emailId/password");
    		return "login/login";
    	}
    	
    	
    }
    
}
