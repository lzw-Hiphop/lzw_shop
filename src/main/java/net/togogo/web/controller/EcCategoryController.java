package net.togogo.web.controller;

import net.togogo.web.bean.EcCategory;
import net.togogo.web.bean.EcCategoryExample;
import net.togogo.web.service.EcCategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class EcCategoryController {


    @Resource
    private EcCategoryService ecCategoryService;

    @RequestMapping("/list")
    public String list(Model model) {
        EcCategoryExample example = new EcCategoryExample();
        List<EcCategory> ecCategorys = ecCategoryService.selectByExample(example);
        for (EcCategory ecCategory : ecCategorys) {
            System.out.println(ecCategorys);
        }

        model.addAttribute("categorys", ecCategorys);
        return "/category";
    }
}
