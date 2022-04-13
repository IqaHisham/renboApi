package com.rbms.renbo.controller;

import com.rbms.renbo.model.User;
import com.rbms.renbo.DTO.userRegistrationDto;
import com.rbms.renbo.repository.itemRepository;
import com.rbms.renbo.repository.ownerRepository;
import com.rbms.renbo.repository.renboRepository;
import com.rbms.renbo.service.userService;
import javax.validation.Valid;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @Autowired
    private static final Logger log = LoggerFactory.getLogger(HomeController.class); 
    @Autowired
    ownerRepository ownerRepository;
    
    @Autowired
    itemRepository itemRepository;
    @Autowired
    renboRepository renboRepository;
    
    @RequestMapping("/")
    public String getIndex(Model model) {
        model.addAttribute("item", itemRepository.findAll());
        return "index";
    }
    
    //request login page/form
    @RequestMapping("/login")
    public String getLogin() {
        return "login";
    }
    
    //request signup page/form
    @GetMapping("/signup")
    public String getSignupForm(userRegistrationDto user, Model model) {
        model.addAttribute("user", user);
        return "signup";
    }
    //save signup information
//    @PostMapping("/signup/register")
//    public String saveSignup(@Valid @ModelAttribute("user") userRegistrationDto user, BindingResult result){
//        User existing = userService.findByEmail(user.getEmail());
//        if (existing != null){
//            result.rejectValue("email", null, "There is already an account registered with that email");
//        }
//
//        if (result.hasErrors()){
//            return "signup";
//        }
//        
//    userService.saveRegistration(user);    
//    return "redirect:/signup?success";
//    }
//    
//    //administrator dashboard
//    @RequestMapping("/admin")
//    public String intoAdmin(Model model) {
//        return "Admin/dashboard";
//    }
    
    //owner dashboard
    //renter/borrower dashboard
    @RequestMapping("/renter")
    public String intoRenter(Model model) {
        model.addAttribute("title", "This is default page for user!");
        return "Owner/user";
    }  
}
