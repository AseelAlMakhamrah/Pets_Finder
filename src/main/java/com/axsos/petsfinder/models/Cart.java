package com.axsos.petsfinder.models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "carts")
public class Cart {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;

    private boolean purchased;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="product_id")
    private Product products;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User purchaser;

    @Column(updatable = false)
    private Date createdAt;
    private Date updatedAt;

    public Cart() {}


}
