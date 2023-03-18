package com.bookiebazzar.controller.repositories.impls;

import com.bookiebazzar.controller.repositories.interfaces.BookRepo;
import com.bookiebazzar.controller.repositories.interfaces.CartRepo;
import com.bookiebazzar.controller.repositories.interfaces.OrderRepo;
import com.bookiebazzar.controller.repositories.interfaces.RepositoryFactory;
import com.bookiebazzar.controller.repositories.interfaces.UserRepo;

public class RepositoryFactoryImpl implements RepositoryFactory {

  private static RepositoryFactoryImpl instance;

  private RepositoryFactoryImpl() {}

  public static RepositoryFactoryImpl getInstance() {
    if (instance == null) {
      instance = new RepositoryFactoryImpl();
    }
    return instance;
  }

  public BookRepo createBookRepo() {
    return new BookRepoImpl();
  }

  public CartRepo createCartRepo() {
    return new CartRepoImpl();
  }

  public OrderRepo createOrderRepo() {
    return new OrderRepoImpl();
  }

  public UserRepo createUserRepo() {
    return new UserRepoImpl();
  }
}
