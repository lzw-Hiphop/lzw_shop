package net.togogo.web.controller;

import net.togogo.web.cart.EcProductExt;
import net.togogo.web.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartService cartService;


    @RequestMapping("/add")
    public String add(HttpSession session, Integer productId, Model model) {
        cartService.add(session, productId);
        Map<Integer, EcProductExt> map = (Map<Integer, EcProductExt>) session.getAttribute("CART_KEY");
        List<EcProductExt> products = new ArrayList<EcProductExt>();
        for (Integer key : map.keySet()) {
            products.add(map.get(key));
        }
        model.addAttribute("products", products);
        return "shopcart";
    }

    @RequestMapping("/update")
    public String update(HttpSession session, Model model, HttpServletRequest request) {
        int count = Integer.parseInt(request.getParameter("num"));
        int productid = Integer.parseInt(request.getParameter("productid"));
        cartService.update(session, productid, count);
        Map<Integer, EcProductExt> map = (Map<Integer, EcProductExt>) session.getAttribute("CART_KEY");
        List<EcProductExt> products = new ArrayList<EcProductExt>();
        for (Integer key : map.keySet()) {
            products.add(map.get(key));
        }
        model.addAttribute("products", products);
        return "shopcart";
    }

    @RequestMapping("/list")
    public String list(HttpServletRequest request, Model model) {
        Collection<EcProductExt> collection = cartService.list(request.getSession());
        request.setAttribute("cart", collection);
        model.addAttribute("products", collection);
        return "confirmOrder";
    }

    @RequestMapping("/remove")
    public String remove(HttpServletRequest request, Integer productid, Model model) {
        cartService.remove(request.getSession(), productid);
        Collection<EcProductExt> collection = cartService.list(request.getSession());
        request.setAttribute("cart", collection);
        model.addAttribute("products", collection);
        return "shopcart";
    }

    @RequestMapping("/removeall")
    public String removeall(HttpServletRequest request, Model model) {
        cartService.removeall(request.getSession());
        Collection<EcProductExt> collection = cartService.list(request.getSession());
        request.setAttribute("cart", collection);
        model.addAttribute("products", collection);
        return "shopcart";
    }

    @RequestMapping("/pay")
    public String pay(HttpServletRequest request) {
        boolean flag = cartService.minusStore(request);
        //秒杀，需要运行redis
        //cartService.flashSale(2);
        if (flag) {
            return "paid";
        } else {
            return "nopaid";
        }
    }
}
