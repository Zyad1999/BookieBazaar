package com.bookiebazzar.model.dtos;

import java.time.LocalDate;
import java.util.Set;

public class UserDto {
    private int id;
    private AddressDto adressDto;
    private String userName;
    private String email;
    private String password;
    private String phoneNumber;
    private String job;
    private LocalDate birthDate;
    private int creditLimit;
    private boolean isAdmin;
    private Set<UserOrderDto> orders;

    public UserDto() {

    }

    public Set<UserOrderDto> getOrders() {
        return orders;
    }

    public void setOrders(Set<UserOrderDto> orders) {
        this.orders = orders;
    }

    public UserDto(int id, AddressDto adressDto, String userName, String email, String password, String phoneNumber,
            String job, LocalDate birthDate, int creditLimit, boolean isAdmin) {
        this.id = id;
        this.adressDto = adressDto;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.job = job;
        this.birthDate = birthDate;
        this.creditLimit = creditLimit;
        this.isAdmin = isAdmin;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAdress(AddressDto adressDto) {
        this.adressDto = adressDto;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public void setCreditLimit(int creditLimit) {
        this.creditLimit = creditLimit;
    }

    public void setAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getId() {
        return id;
    }

    public AddressDto getAdress() {
        return adressDto;
    }

    public String getUserName() {
        return userName;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getJob() {
        return job;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public int getCreditLimit() {
        return creditLimit;
    }

    public boolean isAdmin() {
        return isAdmin;
    }
    
    public boolean isIsAdmin() {
        return isAdmin;
    }
}
