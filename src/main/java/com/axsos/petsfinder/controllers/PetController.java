package com.axsos.petsfinder.controllers;

import com.axsos.petsfinder.models.Pet;
import com.axsos.petsfinder.models.User;
import com.axsos.petsfinder.services.PetServices;
import com.axsos.petsfinder.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class PetController {
    private final PetServices petServices;
    private final UserService userService;

    public PetController(PetServices petServices, UserService userService) {
        this.petServices = petServices;
        this.userService = userService;
    }

    @RequestMapping("/test")
    public String test(@ModelAttribute("pet") Pet pet){
        return "AddPet.jsp";
    }
    @RequestMapping(value = "/addPet/{id}",method = RequestMethod.POST)
    public String addPet(@Valid@ModelAttribute("pet")Pet pet, BindingResult result, @PathVariable("id") Long id){
    // we need to add session to check if the user is in session
    Pet pet1 = petServices.addPet(pet,id);
    return "to any where i need";
    }
    @RequestMapping("/pet/{id}/edit")
    public String showEditPet(@Valid@ModelAttribute("pet") Pet pet, @PathVariable("id") Long id , Model model){
    model.addAttribute("currentPet",pet);
    return "page i want";
    }
    @RequestMapping(value = "/pet/{id}/edit",method =RequestMethod.POST)
    public String editPet(@Valid@ModelAttribute("pet") Pet pet, @PathVariable("id") Long id , Model model){
        petServices.updatePet(pet.getId(),pet.getName(),pet.getAge());
        return "page i want";
    }


}
