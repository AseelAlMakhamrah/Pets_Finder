package com.axsos.petsfinder.models;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.List;

@Entity
@Table(name="users")
public class User {

    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)

    private Long id;
    @Column
    @Size(min=1)
    private String firstName;

    @Column
    @Size(min=1)
    private String lastName;

    @Column
    private String email;

    private String Location;

    @Column
    @Size(min=10)
    private String phoneNumber;

    @Column
    @Size(min=5, message="Password must be greater than 5 characters")
    private String password;

    @Transient
    @Size(min=5, message="Password must be at least 5 characters!")
    private String passwordConfirmation;


    @Column(updatable=false)
    private Date createdAt;

    @Column
    private Date updatedAt;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "users_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private List<Role> roles;

    @OneToMany(mappedBy="owner", fetch=FetchType.LAZY)
    private List<Pet> pets;

    @OneToMany(mappedBy="purchaser", fetch = FetchType.LAZY)
    private List<Cart> carts;

    @PrePersist
    protected void onCreate() {
        this.createdAt = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }



}
