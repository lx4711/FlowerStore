package com.store.flower.service;

import com.store.flower.entity.Address;
import com.store.flower.repository.AddressRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressService {
    @Autowired
    private AddressRepository addressRepository;

    public Address insertAddress(Address address) {
        return addressRepository.save(address);
    }

    public List<Address> findAllBySendPerson(String sendPerson) {
        return addressRepository.findAllBySendPerson(sendPerson);
    }
}
