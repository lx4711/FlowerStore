package com.store.flower.entity;

import javax.persistence.*;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer oid;

    private String itemNumber;
    private String itemName;
    private Integer count;
    private String receivePerson;
    private String sendPerson;
    private String telphone;
    private String address;
    private float price;
    private float totle;
    private String orderTime;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getItemNumber() {
        return itemNumber;
    }

    public void setItemNumber(String itemNumber) {
        this.itemNumber = itemNumber;
    }

    public Integer getCount() {
        return count;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getReceivePerson() {
        return receivePerson;
    }

    public void setReceivePerson(String receivePerson) {
        this.receivePerson = receivePerson;
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getTotle() {
        return totle;
    }

    public void setTotle(float price, Integer count) {
        this.totle = price * count;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public String getSendPerson() {
        return sendPerson;
    }

    public void setSendPerson(String sendPerson) {
        this.sendPerson = sendPerson;
    }

    @Override
    public String toString() {
        return "itemNumber:" + itemNumber + "itemName:" + itemName + "count:" + count + "receivePerson:" + receivePerson +
                "sendPerson:" + sendPerson + "telphone:" + telphone + "address:" + address + "price:" + price + "totle:" +
                totle + "orderTime:" + orderTime;
    }

}

