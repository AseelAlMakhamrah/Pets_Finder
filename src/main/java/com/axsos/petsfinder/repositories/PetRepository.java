package com.axsos.petsfinder.repositories;



import com.axsos.petsfinder.models.Pet;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PetRepository extends CrudRepository<Pet,Long> {
    List<Pet> findAll();
         List<Pet> findAllByOwner(Long id);


}
