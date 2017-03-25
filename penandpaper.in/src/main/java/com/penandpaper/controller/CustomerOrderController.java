package com.penandpaper.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerOrderController {
    @RequestMapping("/order/{cartId}")
public String createOrder(@PathVariable int cartId){
        return "redirect:/checkout?cartId=" + cartId;
}
}

