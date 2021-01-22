package com.axsos.petsfinder.services;


import com.axsos.petsfinder.models.Pet;
import com.axsos.petsfinder.models.User;
import com.axsos.petsfinder.repositories.PetRepository;
import com.axsos.petsfinder.repositories.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PetServices {
    private PetRepository petRepository;
    private UserRepository userRepository;

    public PetServices(PetRepository petRepository, UserRepository userRepository) {
        this.petRepository = petRepository;
        this.userRepository = userRepository;
    }

    public Pet addPet(Pet pet, Long id) {
        User user1 = userRepository.findUserById(id);
        pet.setOwner(user1);
        return petRepository.save(pet);
    }
    public List<Pet> allPets() { return petRepository.findAll();
    }
//    public List<Pet> allPetForOwner(Pet pet) {
//        return petRepository.findPetByOwner("cat");
//    }
    public List<Pet> allPetForOwner(Long id) {
        return petRepository.findAllByOwner(id);
    }

    public void deletePet(Long id) {
        petRepository.deleteById(id);

    }
    public Pet updatePet(Long id, String name, int age) {
        Optional<Pet> optionalPet = petRepository.findById(id);
        if (optionalPet.isPresent()) {
            Pet updatePet = optionalPet.get();
            updatePet.setName(name);
            updatePet.setAge(age);

            return petRepository.save(updatePet);
        } else {
            return null;
        }
    }

}
