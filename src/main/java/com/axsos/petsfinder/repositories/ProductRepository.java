package com.axsos.petsfinder.repositories;

import com.axsos.petsfinder.models.Product;
import com.axsos.petsfinder.models.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository

public interface ProductRepository extends CrudRepository<Product,Long> {
    List<Product> findAll();
//    Product findById(Long id);
    Product findProductById(Long id);

}
