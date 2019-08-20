package net.togogo.web.service.impl;

import net.togogo.web.bean.EcProduct;
import net.togogo.web.bean.EcProductExample;
import net.togogo.web.mapper.EcProductMapper;
import net.togogo.web.service.EcProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EcProductServiceImpl implements EcProductService {

    @Resource
    private EcProductMapper ecProductMapper;

    @Override
    public EcProduct selectByPrimaryKey(Integer productId) {
        return ecProductMapper.selectByPrimaryKey(productId);
    }

    @Override
    public List<EcProduct> selectByExample(EcProductExample example) {
        return ecProductMapper.selectByExample(example);
    }
}
