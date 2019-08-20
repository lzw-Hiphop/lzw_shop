package net.togogo.web.mapper;

import java.util.List;
import net.togogo.web.bean.EcProduct;
import net.togogo.web.bean.EcProductExample;
import org.apache.ibatis.annotations.Param;

public interface EcProductMapper {
    int countByExample(EcProductExample example);

    int deleteByExample(EcProductExample example);

    int deleteByPrimaryKey(Integer productId);

    int insert(EcProduct record);

    int insertSelective(EcProduct record);

    List<EcProduct> selectByExample(EcProductExample example);

    EcProduct selectByPrimaryKey(Integer productId);

    int updateByExampleSelective(@Param("record") EcProduct record, @Param("example") EcProductExample example);

    int updateByExample(@Param("record") EcProduct record, @Param("example") EcProductExample example);

    int updateByPrimaryKeySelective(EcProduct record);

    int updateByPrimaryKey(EcProduct record);
}