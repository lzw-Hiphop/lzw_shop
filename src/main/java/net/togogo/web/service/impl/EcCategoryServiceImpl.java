package net.togogo.web.service.impl;

import net.togogo.web.bean.EcCategory;
import net.togogo.web.bean.EcCategoryExample;
import net.togogo.web.mapper.EcCategoryMapper;
import net.togogo.web.service.EcCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EcCategoryServiceImpl implements EcCategoryService {

    @Resource
    private EcCategoryMapper ecCategoryMapper;

    @Override
    public EcCategory selectByPrimaryKey(Integer categoryId) {
        return ecCategoryMapper.selectByPrimaryKey(categoryId);
    }

    @Override
    public List<EcCategory> selectByExample(EcCategoryExample example) {
        return ecCategoryMapper.selectByExample(example);
    }

    @Override
    public int updateByPrimaryKey(EcCategory record) {
        return ecCategoryMapper.updateByPrimaryKey(record);
    }
}
