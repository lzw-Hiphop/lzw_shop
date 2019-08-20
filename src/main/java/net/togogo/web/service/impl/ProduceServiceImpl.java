package net.togogo.web.service.impl;

import net.togogo.web.bean.EcProduct;
import net.togogo.web.bean.EcProductExample;
import net.togogo.web.cart.EcProductExt;
import net.togogo.web.mapper.EcProductMapper;
import net.togogo.web.service.ProduceService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProduceServiceImpl implements ProduceService {

    @Autowired
    private EcProductMapper productMapper;

    @Override
    public List<EcProduct> list(EcProductExample example) {
        //写业务的逻辑代码

        return productMapper.selectByExample(example);
    }

    @Override
    public EcProductExt get(Integer productId) {
        EcProduct product = productMapper.selectByPrimaryKey(productId);
        EcProductExt ext = new EcProductExt();
        BeanUtils.copyProperties(product, ext);
        ext.setCount(1);
        ext.setSubTotal(ext.getCount() * ext.getBaseprice());
        return ext;
    }
}
