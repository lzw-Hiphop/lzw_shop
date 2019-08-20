package net.togogo.web.mapper;

import java.util.List;

import net.togogo.web.bean.EcCategory;
import net.togogo.web.bean.EcCategoryExample;
import org.apache.ibatis.annotations.Param;

public interface EcCategoryMapper {
    int countByExample(EcCategoryExample example);

    int deleteByExample(EcCategoryExample example);

    int deleteByPrimaryKey(Integer categoryId);

    int insert(EcCategory record);

    int insertSelective(EcCategory record);

    List<EcCategory> selectByExample(EcCategoryExample example);

    EcCategory selectByPrimaryKey(Integer categoryId);

    int updateByExampleSelective(@Param("record") EcCategory record, @Param("example") EcCategoryExample example);

    int updateByExample(@Param("record") EcCategory record, @Param("example") EcCategoryExample example);

    int updateByPrimaryKeySelective(EcCategory record);

    int updateByPrimaryKey(EcCategory record);
}