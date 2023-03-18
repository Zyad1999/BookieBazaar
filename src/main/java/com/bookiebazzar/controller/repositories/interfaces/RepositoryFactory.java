package com.bookiebazzar.controller.repositories.interfaces;

public interface RepositoryFactory {
    BookRepo createBookRepo();
    CartRepo createCartRepo();
    OrderRepo createOrderRepo();
    UserRepo createUserRepo();
}
