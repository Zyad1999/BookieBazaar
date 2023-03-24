package com.bookiebazzar.model.dtos;

import java.io.Serializable;

import com.bookiebazzar.model.enums.Language;

public class BookDto implements Serializable {
    private int id;
    private String name;
    private int price;
    private String author;
    private Language language;
    private int quantity;
    private String description;
    private String img;
    private int numberOfPages;
    private String category;
    
    public BookDto(int id, String name, int price, String author, Language language, int quantity, String description,
            String img, int numberOfPages, String category) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.author = author;
        this.language = language;
        this.quantity = quantity;
        this.description = description;
        this.img = img;
        this.numberOfPages = numberOfPages;
        this.category = category;
    }
    

    public BookDto() {
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getNumberOfPages() {
        return numberOfPages;
    }

    public void setNumberOfPages(int numberOfPages) {
        this.numberOfPages = numberOfPages;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    public Language language(){

        return language;
    }
}
