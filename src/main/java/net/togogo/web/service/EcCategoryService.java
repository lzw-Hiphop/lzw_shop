package net.togogo.web.service;

import net.togogo.web.bean.EcCategory;
import net.togogo.web.bean.EcCategoryExample;

import java.util.List;

public interface EcCategoryService {
    public EcCategory selectByPrimaryKey(Integer categoryId);

    public List<EcCategory> selectByExample(EcCategoryExample example);

    public int updateByPrimaryKey(EcCategory record);
}
