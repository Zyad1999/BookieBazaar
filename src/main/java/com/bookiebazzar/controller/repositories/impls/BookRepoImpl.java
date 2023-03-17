package com.bookiebazzar.controller.repositories.impls;

import java.util.ArrayList;
import java.util.List;

import com.bookiebazzar.controller.repositories.interfaces.BookRepo;
import com.bookiebazzar.model.entities.Book;
import com.bookiebazzar.utils.objects.BookFilter;

import jakarta.persistence.EntityManager;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;

public class BookRepoImpl implements BookRepo {

    @Override
    public int addBook(Book book, EntityManager entityManager) {
        Book newBook;
        try {
            entityManager.getTransaction().begin();
            newBook = entityManager.merge(book);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
            return -1;
        }
        return newBook.getId();
    }

    @Override
    public boolean updateBook(Book book, EntityManager entityManager) {
        try {
            entityManager.getTransaction().begin();
            entityManager.merge(book);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    @Override
    public Book findBook(int bookID, EntityManager entityManager) {
        return entityManager.find(Book.class, bookID);
    }

    @Override
    public boolean removeBook(int bookID, EntityManager entityManager) {
        try {
            entityManager.getTransaction().begin();
            Book book = entityManager.find(Book.class, bookID);
            entityManager.remove(book);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    @Override
    public List<Book> getAllBooks(BookFilter filter, EntityManager entityManager) {
        
        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<Book> query = cb.createQuery(Book.class);
        Root<Book> bookRoot = query.from(Book.class);

        List<Predicate> predicates = new ArrayList<>();

        if (filter.getMinPages() != null) {
            predicates.add(cb.greaterThanOrEqualTo(bookRoot.get("numberOfPages"), filter.getMinPages()));
        }
        if (filter.getMaxPages() != null) {
            predicates.add(cb.lessThanOrEqualTo(bookRoot.get("numberOfPages"), filter.getMaxPages()));
        }
        if (filter.getAuthorSearch() != null) {
            predicates.add(cb.like(bookRoot.get("author"), "%" + filter.getAuthorSearch() + "%"));
        }
        if (filter.getNameSearch() != null) {
            predicates.add(cb.like(bookRoot.get("name"), "%" + filter.getNameSearch() + "%"));
        }
        if (filter.getLanguage() != null) {
            predicates.add(cb.equal(bookRoot.get("language"), filter.getLanguage()));
        }
        if (filter.getCategories() != null && !filter.getCategories().isEmpty()) {
            List<Predicate> categoryPredicates = new ArrayList<>();
            for (String category : filter.getCategories()) {
                categoryPredicates.add(cb.equal(bookRoot.get("category"), category));
            }
            predicates.add(cb.or(categoryPredicates.toArray(new Predicate[0])));
        }
        query.where(predicates.toArray(new Predicate[0]));
        return entityManager.createQuery(query).getResultList();
    }

}
