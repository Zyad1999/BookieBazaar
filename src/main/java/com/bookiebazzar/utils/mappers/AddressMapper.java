package com.bookiebazzar.utils.mappers;

import com.bookiebazzar.model.dtos.AddressDto;
import com.bookiebazzar.model.entities.Address;

public class AddressMapper {

    public static AddressDto toDto(Address address) {
        if(address == null){
            return null;
        }
        AddressDto addressDto = new AddressDto();
        addressDto.setId(address.getId());
        addressDto.setCountry(address.getCountry());
        addressDto.setCity(address.getCity());
        addressDto.setStreet(address.getStreet());
        addressDto.setBuildingNumber(address.getBuildingNumber());
        return addressDto;
    }

    public static Address toEntity(AddressDto addressDto) {
        if(addressDto == null){
            return null;
        }
        Address address = new Address();
        address.setId(addressDto.getId());
        address.setCountry(addressDto.getCountry());
        address.setCity(addressDto.getCity());
        address.setStreet(addressDto.getStreet());
        address.setBuildingNumber(addressDto.getBuildingNumber());
        return address;

    }
}
