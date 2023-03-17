package com.bookiebazzar.model.dtos;

public class AddressDto {
    private int id;
    private String country;
    private String city;
    private String street;
    private int buildingNumber;

    public AddressDto() {

    }

    public AddressDto(int id, String country, String city, String street, int buildingNumber) {
        this.id = id;
        this.country = country;
        this.city = city;
        this.street = street;
        this.buildingNumber = buildingNumber;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public void setBuildingNumber(int buildingNumber) {
        this.buildingNumber = buildingNumber;
    }

    public int getId() {
        return id;
    }

    public String getCountry() {
        return country;
    }

    public String getCity() {
        return city;
    }

    public String getStreet() {
        return street;
    }

    public int getBuildingNumber() {
        return buildingNumber;
    }
    


}
