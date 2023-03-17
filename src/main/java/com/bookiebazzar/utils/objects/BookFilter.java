package com.bookiebazzar.utils.objects;

import java.util.List;

import com.bookiebazzar.model.enums.Language;

public class BookFilter {
    private Integer minPages;
    private Integer maxPages;
    private String authorSearch;
    private String nameSearch;
    private Language language;
    private List<String> categories;

    public BookFilter(Integer minPages, Integer maxPages, String authorSearch, String nameSearch, Language language,
            List<String> categories) {
        this.minPages = minPages;
        this.maxPages = maxPages;
        this.authorSearch = authorSearch;
        this.nameSearch = nameSearch;
        this.language = language;
        this.categories = categories;
    }
    public BookFilter() {
    }
    public Integer getMinPages() {
        return minPages;
    }
    public void setMinPages(Integer minPages) {
        this.minPages = minPages;
    }
    public Integer getMaxPages() {
        return maxPages;
    }
    public void setMaxPages(Integer maxPages) {
        this.maxPages = maxPages;
    }
    public String getAuthorSearch() {
        return authorSearch;
    }
    public void setAuthorSearch(String authorSearch) {
        this.authorSearch = authorSearch;
    }
    public String getNameSearch() {
        return nameSearch;
    }
    public void setNameSearch(String nameSearch) {
        this.nameSearch = nameSearch;
    }
    public Language getLanguage() {
        return language;
    }
    public void setLanguage(Language language) {
        this.language = language;
    }
    public List<String> getCategories() {
        return categories;
    }
    public void setCategories(List<String> categories) {
        this.categories = categories;
    }
    
    public void addToCategories(String category) {
        this.categories.add(category);
    }

    public void removeFromCategories(String category) {
        this.categories.remove(category);
    }
}