package com.bookiebazzar.controller.repositories.impls;

import java.util.List;
import com.bookiebazzar.controller.repositories.interfaces.UserRepo;
import com.bookiebazzar.model.entities.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Query;
import org.mindrot.jbcrypt.BCrypt;

public class UserRepoImpl implements UserRepo {

    public UserRepoImpl() {

    }

    @Override
    public int addUser(User user, EntityManager entityManager) {
        int userID = -1;
        try {
            EntityTransaction entityTransaction = entityManager.getTransaction();
            entityTransaction.begin();
            user.getAdress().setUser(user);
            entityManager.persist(user);
            entityTransaction.commit();
            userID = user.getId();
        }catch (Exception e){
            System.out.println(e);
        }
        return userID;
    }

    @Override
    public boolean updateUser(User user, EntityManager entityManager) {

        try {
            EntityTransaction entityTransaction = entityManager.getTransaction();
            entityTransaction.begin();
            User existingUser = entityManager.find(User.class, user.getId());
            if (existingUser == null) {
                throw new IllegalArgumentException("User with id " + user.getId() + " does not exist.");
            }
            if (user.getAdress() != null) {
                existingUser.getAdress().setCity(user.getAdress().getCity());
                existingUser.getAdress().setCountry(user.getAdress().getCountry());
                existingUser.getAdress().setStreet(user.getAdress().getStreet());
                existingUser.getAdress().setBuildingNumber(user.getAdress().getBuildingNumber());
            }
            if (user.getUserName() != null) {
                existingUser.setUserName(user.getUserName());
            }
            if (user.getEmail() != null) {
                existingUser.setEmail(user.getEmail());
            }
            if (user.getPhoneNumber() != null) {
                existingUser.setPhoneNumber(user.getPhoneNumber());
            }
            if (user.getJob() != null) {
                existingUser.setJob(user.getJob());
            }
            if (user.getBirthDate() != null) {
                existingUser.setBirthDate(user.getBirthDate());
            }
            if (user.getCreditLimit() != null) {
                existingUser.setCreditLimit(user.getCreditLimit());
            }
            entityManager.merge(existingUser);
            entityTransaction.commit();
            return true;
        } catch (Exception ex) {
            System.out.println(ex);
            return false;
        }
    }


    @Override
    public User findUserByEmail(String email, EntityManager entityManager) {
        try {
            Query query = entityManager.createQuery("select u from User u where u.email=:email");
            query.setParameter("email", email);
            return (User) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    @Override
    public User findUserById(int id, EntityManager entityManager) {

        User user = entityManager.find(User.class, id);
        if (user != null) {
            return user;
        } else {
            return null;
        }
    }

    @Override
    public List<User> getAllUsers(EntityManager entityManager) {
        try {
            Query query = entityManager.createQuery("select u from User u");
            return (List<User>) query.getResultList();
        } catch (NoResultException e) {
            return null;
        }
    }

    @Override
    public boolean makeUserAdmin(int userId, EntityManager entityManager) {
        try {
            EntityTransaction entityTransaction = entityManager.getTransaction();
            User userTemp = findUserById(userId, entityManager);
            entityTransaction.begin();
            userTemp.setAdmin(!userTemp.isAdmin());
            entityTransaction.commit();
            return true;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return false;
        }

    }

    @Override
    public User findUserByUserName(String userName, EntityManager entityManager) {
        try {
            Query query = entityManager.createQuery("select u from User u where u.userName=:userName");
            query.setParameter("userName", userName);
            return (User) query.getSingleResult();

        } catch (NoResultException e) {
            return null;
        }
    }

    @Override
    public boolean checkEmailAvailability(String email, EntityManager entityManager) {
        try {
            Query query = entityManager.createQuery("select u from User u where u.email=:email");
            query.setParameter("email", email);
            User user = (User) query.getSingleResult();
            return false;
        } catch (NoResultException e) {
            return true;
        }
    }

    @Override
    public boolean checkUserNameAvailability(String userName, EntityManager entityManager) {
        try {
            Query query = entityManager.createQuery("select u from User u where u.userName=:userName");
            query.setParameter("userName", userName);
            System.out.println("return is " + query.getSingleResult());
            User user = (User) query.getSingleResult();
            return false;
        } catch (NoResultException e) {
            return true;
        }
    }

    @Override
    public boolean updatePassword(int userId, String password, EntityManager entityManager){
        String salt = BCrypt.gensalt();
        String hashedPassword = BCrypt.hashpw(password,salt);
        try {
            entityManager.getTransaction().begin();
            Query query = entityManager.createQuery("update User u set u.password = :pass where u.id = :id");
            query.setParameter("id", userId);
            query.setParameter("pass", hashedPassword);
            query.executeUpdate();
            entityManager.getTransaction().commit();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }
}
