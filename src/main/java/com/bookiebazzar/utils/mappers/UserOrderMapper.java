package com.bookiebazzar.utils.mappers;

import java.util.HashSet;
import java.util.Set;
import com.bookiebazzar.model.dtos.BookOrderDto;
import com.bookiebazzar.model.dtos.UserOrderDto;
import com.bookiebazzar.model.entities.BookOrder;
import com.bookiebazzar.model.entities.UserOrder;

public class UserOrderMapper {

    public static UserOrderDto toDto(UserOrder userOrder) {
        if(userOrder == null){
            return null;
        }
        UserOrderDto userOrderDto = new UserOrderDto();
        userOrderDto.setUserId((userOrder.getUser() != null) ? userOrder.getUser().getId() : -1);
        userOrderDto.setId(userOrder.getId());
        userOrderDto.setCreatedAt(userOrder.getCreatedAt());
        userOrderDto.setTotalPrice(userOrder.getTotalPrice());
  
        Set<BookOrderDto> bookOrderDtos = new HashSet<>();
        for (BookOrder bookOrder : userOrder.getBookOrders()) {
            BookOrderDto bookOrderDto = BookOrderMapper.toDto(bookOrder);
            bookOrderDtos.add(bookOrderDto);
        }
        userOrderDto.setBookOrders(bookOrderDtos);
        return userOrderDto;
    }

    public static UserOrder toEntity(UserOrderDto userOrderDto) {
        if(userOrderDto == null){
            return null;
        }
        UserOrder userOrder = new UserOrder();
        userOrder.setId(userOrderDto.getId());
        userOrder.setCreatedAt(userOrderDto.getCreatedAt());
        userOrder.setTotalPrice(userOrderDto.getTotalPrice());

        Set<BookOrder> bookOrders = new HashSet<>();
        for (BookOrderDto bookOrderDto : userOrderDto.getBookOrders()) {
            BookOrder bookOrder = BookOrderMapper.toEntity(bookOrderDto);
            bookOrders.add(bookOrder);
        }
        userOrder.setBookOrders(bookOrders);

        return userOrder;
    }
}
