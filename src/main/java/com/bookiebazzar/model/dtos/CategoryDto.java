package com.bookiebazzar.model.dtos;

public class CategoryDto {
    private String category;
    private String img;
    private int index;
    
    
    public CategoryDto() {
    }
    public CategoryDto(String category, String img, int index) {
        this.category = category;
        this.img = img;
        this.index = index;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
    public String getImg() {
        return img;
    }
    public void setImg(String img) {
        this.img = img;
    }
    public int getIndex() {
        return index;
    }
    public void setIndex(int index) {
        this.index = index;
    }
    
}
