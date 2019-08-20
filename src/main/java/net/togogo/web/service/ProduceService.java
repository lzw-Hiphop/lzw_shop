package net.togogo.web.service;

import net.togogo.web.bean.EcProduct;
import net.togogo.web.bean.EcProductExample;
import net.togogo.web.cart.EcProductExt;

import java.util.List;

public interface ProduceService {

    public List<EcProduct> list(EcProductExample example);

    public EcProductExt get(Integer productId);
}
