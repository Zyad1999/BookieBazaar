package com.bookiebazzar.model.dtos;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

public class UserDto {
    private int id;
    private AddressDto addressDto;
    private String userName;
    private String email;
    private String password;
    private String phoneNumber;
    private String job;
    private LocalDate birthDate;
    private int creditLimit;
    private boolean isAdmin;
    private Set<UserOrderDto> orders = new HashSet<UserOrderDto>();

    public UserDto() {

    }

    public Set<UserOrderDto> getOrders() {
        return orders;
    }

    public void setOrders(Set<UserOrderDto> orders) {
        this.orders = orders;
    }

    public UserDto(int id, AddressDto addressDto, String userName, String email, String password, String phoneNumber,
            String job, LocalDate birthDate, int creditLimit, boolean isAdmin) {
        this.id = id;
        this.addressDto = addressDto;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.job = job;
        this.birthDate = birthDate;
        this.creditLimit = creditLimit;
        this.isAdmin = isAdmin;
    }

    public UserDto(AddressDto addressDto, String userName, String email, String password, String phoneNumber,
                   String job, LocalDate birthDate, int creditLimit, boolean isAdmin) {
        this.addressDto = addressDto;
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

    public void setAddress(AddressDto addressDto) {
        this.addressDto = addressDto;
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

    public AddressDto getAddress() {
        return addressDto;
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

}
