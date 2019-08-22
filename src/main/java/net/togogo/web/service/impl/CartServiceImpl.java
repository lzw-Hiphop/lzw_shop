package net.togogo.web.service.impl;

import net.togogo.web.bean.EcProduct;
import net.togogo.web.bean.EcProductExample;
import net.togogo.web.cart.EcProductExt;
import net.togogo.web.mapper.EcProductMapper;
import net.togogo.web.service.CartService;
import net.togogo.web.service.ProduceService;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Service
public class CartServiceImpl implements CartService {

    private Map cart = null;
    private final String SESSION_CART_KEY = "CART_KEY";

    @Autowired
    private ProduceService produceService;
    @Resource
    private EcProductMapper ecProductMapper;
    @Autowired
    private RedisTemplate redisTemplate;


    /**
     * 购物车的增加商品
     */
    public void add(HttpSession session, Integer productId) {
        cart = (Map<Integer, EcProductExt>) session.getAttribute(SESSION_CART_KEY);
        if (null == cart) {
            cart = new HashMap<Integer, EcProductExt>();
            session.setAttribute(SESSION_CART_KEY, cart);
        }
        EcProductExt productExt = produceService.get(productId);
        //判断是否已经购买过
        if (null == cart.get(productExt.getProductId())) {
            cart.put(productExt.getProductId(), productExt);
        } else {
            EcProductExt product = (EcProductExt) cart.get(productExt.getProductId());
            product.setCount(product.getCount() + 1);
            product.setSubTotal(product.getCount() * product.getBaseprice());
            cart.put(product.getProductId(), product);
        }
        session.setAttribute(SESSION_CART_KEY,cart);
    }

    /**
     * 删除购物车的商品
     *
     * @param productId
     */
    public void remove(HttpSession session, Integer productId) {
        cart = (Map<Integer, EcProductExt>) session.getAttribute(SESSION_CART_KEY);
        cart.remove(productId);
        session.setAttribute(SESSION_CART_KEY,cart);
    }

    /**
     * 删除所有购物车的商品
     *
     */
    public void removeall(HttpSession session) {
        session.removeAttribute(SESSION_CART_KEY);
    }

    /**
     * 更新
     *
     * @param productId
     * @param count
     */
    public void update(HttpSession session, Integer productId, int count) {
        cart = (Map<Integer, EcProductExt>) session.getAttribute(SESSION_CART_KEY);
        EcProductExt product = (EcProductExt) cart.get(productId);
        product.setCount(count);
        product.setSubTotal(product.getCount() * product.getBaseprice());
        cart.put(product.getProductId(), product);
    }

    /**
     * 返回整个购物车的数据
     *
     * @return
     */
    public Collection<EcProductExt> list(HttpSession session) {
        Object obj = session.getAttribute(SESSION_CART_KEY);
        if (null == obj) {
            return null;
        } else {
            cart = (Map<Integer, EcProductExt>) obj;
            Collection<EcProductExt> collection = cart.values();
            return collection;
        }
    }

    /**
     * 购买成功并减库存或购买失败库存不变
     */
    public boolean minusStore(HttpServletRequest request){
        cart = (Map<Integer, EcProductExt>)request.getSession().getAttribute(SESSION_CART_KEY);
        boolean flag = true;
        for (Object pid: cart.keySet()) {
            EcProductExt productExt = (EcProductExt)cart.get(pid);
            int store = ecProductMapper.selectByPrimaryKey((Integer) pid).getStore()- productExt.getCount();
            if(store<0){
                flag = false;
                break;
            }
        }
        //库存足够，可以购买
        if(flag) {
            for (Object pid : cart.keySet()) {
                EcProductExt productExt = (EcProductExt) cart.get(pid);
                int store = ecProductMapper.selectByPrimaryKey((Integer) pid).getStore() - productExt.getCount();

                //将销量数据存入reids，需要启动redis
                redisTemplate.opsForZSet().incrementScore("productRange",productExt.getProductName(),productExt.getCount());

                productExt.setStore(store);
                ecProductMapper.updateByPrimaryKeySelective(productExt);
                request.getSession().removeAttribute(SESSION_CART_KEY);
            }
        }
        return flag;
    }

    //抢购功能，redis实现
    public void flashSale(int productId){
        //若redis中有对应的商品数据则从redis中读
        if(redisTemplate.opsForValue().get("product"+productId)!=null){
            int temp = Integer.parseInt((String)redisTemplate.opsForValue().get("product"+productId));
            temp--;
            System.out.println(temp);
            redisTemplate.opsForValue().set("product"+productId,temp+"");
        }
        int store = ecProductMapper.selectByPrimaryKey(productId).getStore();
        //将商品id和剩余库存放进redis中
        redisTemplate.opsForValue().set("product"+productId,store+"");
    }

    //排行榜
    public Set<String> range(){
        Set productRange = redisTemplate.opsForZSet().reverseRange("productRange", 0, -1);
        return productRange;
    }

}
