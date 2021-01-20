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
    public void addProductToUser(Long product_id,Long user_id){
        Product product=productRepository.findById(product_id).orElse(null);
        User user=userRepository.findById(user_id).orElse(null);
        List<Product> products=user.getProducts();
        products.add(product);
        user.setProducts(products);
        userRepository.save(user);
    }
    public Product createProduct(Product product){
        return productRepository.save(product);
    }
    public void updateProduct(Product product){
        Product product1 = productRepository.findById(product.getId()).orElse(null);
        assert product1 != null;
        product1.setName(product.getName());
        product1.setPrice(product.getPrice());
        productRepository.save(product1);
    }


}
