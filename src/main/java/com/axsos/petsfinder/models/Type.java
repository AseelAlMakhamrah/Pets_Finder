package com.axsos.petsfinder.models;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
@Entity
@Table(name = "types")
public class Type {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String name;

    @OneToMany(mappedBy="types", fetch= FetchType.LAZY)
    private List<Pet> pets;

    @Column(updatable = false)
    private Date createdAt;
    private Date updatedAt;

    public Type() {
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }



    public Date getCreatedAt() {
        return createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }



    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }
}
