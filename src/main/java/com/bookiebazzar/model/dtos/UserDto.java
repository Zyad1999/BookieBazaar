package com.bookiebazzar.model.dtos;

import com.bookiebazzar.model.entities.Address;
import java.time.LocalDate;

public class UserDto {
    private int id;
    private Address adress;
    private String userName;
    private String email;
    private String password;
    private String phoneNumber;
    private String job;
    private LocalDate birthDate;
    private int creditLimit;
    private boolean isAdmin;

    public UserDto() {

    }

    public UserDto(int id, Address adress, String userName, String email, String password, String phoneNumber,
            String job, LocalDate birthDate, int creditLimit, boolean isAdmin) {
        this.id = id;
        this.adress = adress;
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

    public void setAdress(Address adress) {
        this.adress = adress;
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

    public Address getAdress() {
        return adress;
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
