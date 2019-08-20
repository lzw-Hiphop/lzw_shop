package net.togogo.web.controller;

import net.togogo.web.bean.EcProduct;
import net.togogo.web.bean.EcProductExample;
import net.togogo.web.service.EcProductService;
import net.togogo.web.service.ProduceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.SetOperations;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

@Controller
public class IndexController {

    @Autowired
    private ProduceService produceService;
    @Autowired
    private EcProductService ecProductService;


    @RequestMapping("/index")
    public String index(HttpServletRequest request,Model model) {
        EcProductExample example = new EcProductExample();
        example.createCriteria().andProductIdIsNotNull();
        List<EcProduct> products = produceService.list(example);
        //定义一个记录历史浏览记录商品的集合
        List<EcProduct> historyProductList=new ArrayList<EcProduct>();
        int[] pids = new int[5];
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie:cookies) {
            if ("pids".equals(cookie.getName())) {
                String[] split = cookie.getValue().split("-");
                for (int i = 0; i < split.length&&i<5; i++) {
                    pids[i] = Integer.parseInt(split[i]);
                    EcProduct ecProduct = ecProductService.selectByPrimaryKey(pids[i]);
                    historyProductList.add(ecProduct);
                }
            }
        }
        model.addAttribute("historyProductList",historyProductList);
        model.addAttribute("products", products);
        return "index";
    }

    @RequestMapping("/productDetail")
    public String productDetail(int productId, HttpServletRequest request, HttpServletResponse response, Model model){
        EcProduct ecProduct = ecProductService.selectByPrimaryKey(productId);

        String productid = productId+"";
        String pids = productid;
        Cookie[] cookies = request.getCookies();
        if(cookies.length!=0){
            for (Cookie cookie:cookies) {
                if("pids".equals(cookie.getName())){
                    String[] split = cookie.getValue().split("-");
                    List<String> strings = Arrays.asList(split);
                    LinkedList<String> list=new LinkedList<>(strings);
                    if(list.contains(productid)){
                        list.remove(productid);
                        list.addFirst(productid);
                    }else {
                        list.addFirst(productid);
                    }
                    //将集合【2，1，3】转成字符串2-1-3
                    StringBuilder stringBuilder = new StringBuilder();
                    for (int i = 0; i < list.size()&&i<5; i++) {
                        stringBuilder.append(list.get(i));
                        stringBuilder.append("-");
                    }
                     pids = stringBuilder.toString();
                }
            }
        }
        //将pid写到客户端的cookie
        Cookie cookie_pids=new Cookie("pids",pids);
        response.addCookie(cookie_pids);

        model.addAttribute("ecProduct",ecProduct);
        return "productDetail";
    }
}
