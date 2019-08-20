package net.togogo.web.test;

import net.togogo.web.bean.EcCategory;
import net.togogo.web.service.EcCategoryService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.logging.Logger;

@RunWith(SpringJUnit4ClassRunner.class)//表示整合JUnit4进行测试
@ContextConfiguration(locations = {"classpath:*.xml"})//加载spring配置文件
public class EcCategoryServiceTest {

    @Resource
    EcCategoryService ecCategoryService;

    @Test
    public void selectByPrimaryKey() {
        EcCategory category = ecCategoryService.selectByPrimaryKey(3);
        System.out.println(category);
    }

    @Test
    public void update() {
        EcCategory category = ecCategoryService.selectByPrimaryKey(3);
        category.setCategoryName("语文");
        ecCategoryService.updateByPrimaryKey(category);
        System.out.println(category);
    }


}
