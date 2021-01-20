package com.axsos.petsfinder.services;


import com.axsos.petsfinder.models.Pet;
import com.axsos.petsfinder.repositories.PetRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PetServices {
    private PetRepository petRepository;

    public PetServices(PetRepository petRepository) {
        this.petRepository = petRepository;
    }

    public Pet addPet(Pet pet) {
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
