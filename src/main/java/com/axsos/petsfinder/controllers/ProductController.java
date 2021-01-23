package com.axsos.petsfinder.controllers;

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
import java.util.List;

@Controller
public class ProductController {
    private final ProductServices productServices;
    private final UserService userService;

    public ProductController(ProductServices productServices, UserService userService) {
        this.productServices = productServices;
        this.userService = userService;
    }
    @RequestMapping(value = "/addProduct" , method = RequestMethod.POST)
    public String createProduct(@Valid @ModelAttribute("product") Product product,BindingResult result){
        //we need to add if statement  for to check if the user is admin or not
       // if the user.role.id == admin id then he can add product
        if(result.hasErrors()){
            return "admindashboard.jsp";
        }
        else{
        Product newProduct = productServices.createProduct(product);
        return "redirect:/home";
        }
    }
//    @RequestMapping("/product/{id}/delete")
//    public String deleteEvent(@PathVariable("id")Long id){
//        eventsService.deleteEvent(id);
//        return "redirect:/events";
//    }
        @RequestMapping("store")
        public String showStorePage(Model model){
        List<Product> productList=productServices.allProduct();
        model.addAttribute("products",productList);
        return "store.jsp";
        }

        @RequestMapping(value = "/product/addToCart/{id}")
        public String addProductToCart(@PathVariable("id") Long product_id, HttpSession session, Model model){
            User user = (User) session.getAttribute("user1");
//            Product product1=productServices.findById(product_id);
            productServices.AddToCart(product_id,user.getId());
            return "redirect:/store";
        }
        @RequestMapping("/cart")
        public String showCart(HttpSession session,Model model){
            //User user = (User) session.getAttribute("user1");
            //List<Product> allProduct=userService.findAllProduct(user);
            //model.addAttribute("products",allProduct);
            return "cart.jsp";
        }
}
