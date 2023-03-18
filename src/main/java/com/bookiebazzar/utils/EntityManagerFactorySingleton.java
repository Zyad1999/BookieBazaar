package com.bookiebazzar.utils;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class EntityManagerFactorySingleton {

    private static final EntityManagerFactory entityManagerFactory =
            Persistence.createEntityManagerFactory("main");

    private EntityManagerFactorySingleton() {}

    public static EntityManagerFactory getEntityManagerFactory() {
        return entityManagerFactory;
    }
}
