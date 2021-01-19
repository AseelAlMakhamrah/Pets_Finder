package com.axsos.petsfinder.models;

import javax.persistence.*;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import java.util.Date;
import java.util.List;

@Entity
@Table(name="products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @DecimalMin(value = "1.00", inclusive = true)
    private double price;

    @Column(updatable = false)
    private Date createdAt;
    private Date updatedAt;

    @OneToMany (mappedBy="products", fetch = FetchType.LAZY)
    private List<Cart> carts;
}


