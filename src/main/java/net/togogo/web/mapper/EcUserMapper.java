package net.togogo.web.mapper;

import java.util.List;
import net.togogo.web.bean.EcUser;
import net.togogo.web.bean.EcUserExample;
import org.apache.ibatis.annotations.Param;

public interface EcUserMapper {
    int countByExample(EcUserExample example);

    int deleteByExample(EcUserExample example);

    int deleteByPrimaryKey(Integer userId);

    int insert(EcUser record);

    int insertSelective(EcUser record);

    List<EcUser> selectByExample(EcUserExample example);

    EcUser selectByPrimaryKey(Integer userId);

    int updateByExampleSelective(@Param("record") EcUser record, @Param("example") EcUserExample example);

    int updateByExample(@Param("record") EcUser record, @Param("example") EcUserExample example);

    int updateByPrimaryKeySelective(EcUser record);

    int updateByPrimaryKey(EcUser record);
}