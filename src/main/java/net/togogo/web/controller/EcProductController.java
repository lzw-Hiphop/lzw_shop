package net.togogo.web.controller;

import net.togogo.web.service.EcProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class EcProductController {

    @Resource
    private EcProductService ecProductService;

    @RequestMapping("/product")
    public String list(Model model) {

        return "productDetail";
    }
}
