package com.bookiebazzar.controller.services.impls;

import java.util.ArrayList;
import java.util.List;

import com.bookiebazzar.controller.repositories.impls.OrderRepoImpl;
import com.bookiebazzar.controller.services.interfaces.OrderServices;
import com.bookiebazzar.model.dtos.UserOrderDto;
import com.bookiebazzar.model.entities.UserOrder;
import com.bookiebazzar.utils.mappers.UserOrderMapper;

import jakarta.persistence.EntityManager;

public class OrderServicesImpl implements OrderServices {

    private static OrderServices orderServices;

    private OrderServicesImpl() {
    }

    public static OrderServices getOrderServices() {
        if (orderServices == null)
            orderServices = new OrderServicesImpl();
        return orderServices;
    }

    @Override
    public List<UserOrderDto> getListOfOrderDto(int id, EntityManager em) {

        OrderRepoImpl orderRepo = new OrderRepoImpl();
        List<UserOrder> listOfOrder = orderRepo.getUserOrders(id, em);
        List<UserOrderDto> listOfUserOrderDto = new ArrayList<>();
        for (UserOrder userOrder : listOfOrder) {
            UserOrderDto userOrderDto = UserOrderMapper.toDto(userOrder);
            listOfUserOrderDto.add(userOrderDto);
        }
        return listOfUserOrderDto;
    }

}
