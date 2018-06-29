package com.college.controller;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.college.model.Customer;
import com.college.model.ShippingAddress;
import com.college.service.CustomerService;

@Controller
public class HomeController {

	@Autowired
	CustomerService customerService;
	
    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/login")
    public String login(
            @RequestParam(value="error", required = false)
            String error,
            @RequestParam(value="logout", required = false)
            String logout,
            Model model,HttpServletRequest req, HttpServletResponse res){

        if(error != null){
            model.addAttribute("error", "Invalid username and password");
        }

        if (logout !=null){
        	HttpSession session=req.getSession(false);
        	SecurityContextHolder.clearContext();
        	session=req.getSession(false);
        	if(session!=null)
        	{
        		session.invalidate();
        		System.out.println("Session clear");
        	}
        	for(Cookie cookie:req.getCookies()){
        		cookie.setMaxAge(0);
        	}
            model.addAttribute("msg", "You have been logged out successfully");
        }

        return "login";
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }
@RequestMapping("/contact")
public String contact()
{
	return "contact";
}
@RequestMapping("/help")
public String help()
{
	return "help";
}


@RequestMapping("/userProfile")
public String userProfile(Model model,@AuthenticationPrincipal User activeUser){
	Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
	model.addAttribute("customerEmail", customer.getCustomerEmail());
	model.addAttribute("customerCountry", customer.getBillingAddress().getCountry());
	model.addAttribute("customerPhone", customer.getCustomerPhone());
	model.addAttribute("customerName", customer.getCustomerName());
	return "userProfile";
}

@RequestMapping("/userAddress")
public String userAddress(Model model , @AuthenticationPrincipal User activeUser){
	Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
	ShippingAddress shippingAddress=customer.getShippingAddress();
	String address=shippingAddress.getApartmentNumber()+" "+shippingAddress.getStreetName()+" "+shippingAddress.getCity()+" "+shippingAddress.getZipCode();
	model.addAttribute("address", address);
	model.addAttribute("customerCountry", customer.getBillingAddress().getCountry());
	model.addAttribute("customerPhone", customer.getCustomerPhone());
	model.addAttribute("customerName", customer.getCustomerName());
	
	return "userAddress";
}
}





// The End of Class;
