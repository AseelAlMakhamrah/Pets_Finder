package com.axsos.petsfinder.controllers;

import com.axsos.petsfinder.models.Product;
import com.axsos.petsfinder.services.ProductServices;
import com.axsos.petsfinder.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class ProductController {
    private final ProductServices productServices;
    private final UserService userService;

    public ProductController(ProductServices productServices, UserService userService) {
        this.productServices = productServices;
        this.userService = userService;
    }
//    @RequestMapping(value = "/addProduct" , method = RequestMethod.POST)
//    public Product createProduct(@Valid @ModelAttribute("product") Product product, BindingResult result){
//        //we need to add if statement  for to check if the user is admin or not
//       // if the user.role.id == admin id then he can add product
//        if(result.hasErrors()){
//            return "to adminpage ";
//        }
//        else{
//        Product newProduct = productServices.createProduct(product);
//        return "redirect for ";
//        }
//    }
//    @RequestMapping("/product/{id}/delete")
//    public String deleteEvent(@PathVariable("id")Long id){
//        eventsService.deleteEvent(id);
//        return "redirect:/events";
//    }




}
