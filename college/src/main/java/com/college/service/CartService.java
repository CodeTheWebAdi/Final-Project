package com.college.service;

import com.college.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
