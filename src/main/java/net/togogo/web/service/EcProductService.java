package net.togogo.web.service;


import net.togogo.web.bean.EcProduct;
import net.togogo.web.bean.EcProductExample;

import java.util.List;

public interface EcProductService {
    public EcProduct selectByPrimaryKey(Integer productId);

    public List<EcProduct> selectByExample(EcProductExample example);
}
