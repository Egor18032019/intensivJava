package com.simbirsoftintensiv.intensiv.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "companies")
public class Company extends AbstractBaseEntity {

    @Column(name = "name")
    private String name;

    @Column(name = "address")
    private String address;

    @Column(name = "phone")
    private Long phone;

    public Company() {}

    public Company(String name, String address, Long phone) {
        this.name = name;
        this.address = address;
        this.phone = phone;
    }

    public Company(Integer id, String name, String address, Long phone) {
        super(id);
        this.name = name;
        this.address = address;
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Company{" +
               "name='" + name + '\'' +
               ", address='" + address + '\'' +
               ", phone=" + phone +
               '}';
    }
}
