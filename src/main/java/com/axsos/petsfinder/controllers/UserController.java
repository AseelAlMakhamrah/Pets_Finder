package com.axsos.petsfinder.controllers;

import com.axsos.petsfinder.Validator.UserValidator;
import com.axsos.petsfinder.models.Product;
import com.axsos.petsfinder.models.User;
import com.axsos.petsfinder.services.ProductServices;
import com.axsos.petsfinder.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@Controller
public class UserController {
    private final UserService userService;
    private final UserValidator userValidator;
    private final ProductServices productServices;


    // NEW
    public UserController(UserService userService, UserValidator userValidator,ProductServices productServices) {
        this.userService = userService;
        this.userValidator = userValidator;
        this.productServices=productServices;
    }
    //this method to show registration page
    @RequestMapping("/registration")
    public String registerForm(@Valid @ModelAttribute("user") User user) {
        return "registrationPage.jsp";
    }

    // this method to take information from registration form to save user
    @PostMapping("/registration")
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            return "registrationPage.jsp";
        }
        else {
            if(userService.allUsers().size() == 0) {
                userService.saveUserWithAdminRole(user);
                return "redirect:/home";
            }
            else{
            userService.saveWithUserRole(user);
            return "redirect:/home";
        }
        }

    }
    //this method to show admin page
    @RequestMapping("/admin")
    public String adminPage(Principal principal, Model model,HttpSession session,@Valid @ModelAttribute("product") Product product,BindingResult result) {
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        User user = (User) session.getAttribute("user1");
        User user1=userService.findById(user.getId()) ;
        List<User> users= userService.allUsers();
        List<Product> products=productServices.allProduct();
//        model.addAttribute("user_test",user1.ro);
        model.addAttribute("users",users);
        model.addAttribute("usersAsUsers",userService.findAllUser());

        if(user1 !=null) {
            if(user1.getRoles().size() == 2) {
            return "admindashboard.jsp";
             }
             else {
            return "admindashboard.jsp";
             }
        }
        else{
            return "redirect:/login";
        }
    }
    //this method to check the login
    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required=false) String error,Principal principal,HttpSession session, @RequestParam(value="logout", required=false) String logout, Model model) {

        if(error != null) {
            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Logout Successful!");
        }
        return "login.jsp";
    }

    @RequestMapping( "/home")
    public String home(Principal principal, Model model,HttpSession session) {
        // 1
        String username = principal.getName();
        User user1 = userService.findByUsername(username);
        session.setAttribute("user1",user1);
        session.setAttribute("userId",user1.getId());
        model.addAttribute("products",productServices.allProduct());
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "homePage.jsp";
    }
    // this method for check and go to admin page
    @RequestMapping( "/adminPage/{id}")
    public String adminPage( Model model, HttpSession session, @PathVariable("id")Long id) {
        User user= userService.findById(id);
        List<Product> allProducts= productServices.allProduct();
        model.addAttribute("allProducts",allProducts);
        model.addAttribute("user",user);
        if(user.getRoles().size() == 2) {
            return "adminPage.jsp";
        }
        return "homePage.jsp";
    }
    @RequestMapping(value = "/makeAdmin",method = RequestMethod.POST)
    public String makeAdmin(@RequestParam("user") Long id,Model model){
        User user=userService.findById(id);
        userService.updateAdmin(user);
        return "redirect:/admin";
    }
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public String deleteUser(@RequestParam("user") Long id,Model model){
        User user=userService.findById(id);
        userService.deleteUser(user);
        return "redirect:/admin";
    }
    @RequestMapping("/user/{id}")
    public String editEvent(@PathVariable("id")Long id,@ModelAttribute("user")User user,Model model,HttpSession session){
        if(session.getAttribute("user1")==null){
            return "redirect:/";
        }
        User users= (User) session.getAttribute("user1");
        User userVisit=userService.findById(users.getId()) ;
        model.addAttribute("user_visit",userVisit);
        model.addAttribute("user",userService.findById(id));
        model.addAttribute("allPets", user.getPets());
        return "userPage.jsp";
    }
    @RequestMapping(value = "/user/{id}",method = RequestMethod.PUT)
    public String updateEvent(@PathVariable("id")Long id,@Valid @ModelAttribute("user")User user,BindingResult result){
        if(result.hasErrors()){
            return "userPage.jsp";
        }else{
            userService.updateUser(user);
            return "redirect:/home";
        }

    }
}
