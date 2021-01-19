package com.axsos.petsfinder.repositories;

import com.axsos.petsfinder.models.Cart;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartRepository extends CrudRepository<Cart,Long> {

}
