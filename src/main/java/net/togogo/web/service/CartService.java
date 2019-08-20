package net.togogo.web.service;

import net.togogo.web.cart.EcProductExt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collection;

public interface CartService {

    /**
     * 购物车的增加商品
     *
     * @param productExt
     */
    public void add(HttpSession session, Integer productId);

    /**
     * 删除购物车的商品
     *
     * @param productId
     */
    public void remove(HttpSession session, Integer productId);


    /**
     * 更新
     *
     * @param productId
     * @param count
     */
    public void update(HttpSession session, Integer productId, int count);

    /**
     * 返回整个购物车的数据
     *
     * @return
     */
    public Collection<EcProductExt> list(HttpSession session);

    public void removeall(HttpSession session);

    public boolean minusStore(HttpServletRequest request);

    public void flashSale(int productId);
}
