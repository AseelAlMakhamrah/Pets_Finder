package com.axsos.petsfinder.services;

import com.axsos.petsfinder.models.Product;
import com.axsos.petsfinder.models.User;
import com.axsos.petsfinder.repositories.CartRepository;
import com.axsos.petsfinder.repositories.ProductRepository;
import com.axsos.petsfinder.repositories.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServices {
    private final ProductRepository productRepository;
    private final UserRepository userRepository;
    private final CartRepository cartRepository;

    public ProductServices(ProductRepository productRepository, UserRepository userRepository, CartRepository cartRepository) {
        this.productRepository = productRepository;
        this.userRepository = userRepository;
        this.cartRepository = cartRepository;
    }

    public List<Product> allProduct() {
        return productRepository.findAll();
    }
    public Product getProduct(Long id) {
        return this.productRepository.findById(id).orElse(null);
    }


}
