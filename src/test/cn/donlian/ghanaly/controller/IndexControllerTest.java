package cn.donlian.ghanaly.controller;


import cn.donlian.ghanaly.configuration.GHAnalyWebAppInitializer;
import cn.donlian.ghanaly.configuration.MongoConfig;
import cn.donlian.ghanaly.configuration.RootConfig;
import cn.donlian.ghanaly.configuration.WebConfig;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
* IndexController Tester. 
* 
* @author <Authors name> 
* @since <pre>五月 28, 2017</pre> 
* @version 1.0 
*/
@Component
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {GHAnalyWebAppInitializer.class,
        MongoConfig.class, WebConfig.class, RootConfig.class})
public class IndexControllerTest {

/*    @Autowired
    private UserService userService;*/

    @Before
    public void before() throws Exception {
    }

    @After
    public void after() throws Exception {
    }

    /**
    *
    * Method: index(ModelMap modelMap)
    *
    */
    /*@Test
    public void testIndex() throws Exception {
    //TODO: Test goes here...
        UserBo userBo = new UserBo();
        userBo.setPassword("junlenet");
        userBo.setPhone("130279814XX");
        userBo.setSex("男");
        userBo.setUserName("www.junlenet.com");
        userBo.setUserNo("1000524100250");
        userBo = userService.save(userBo);
        Set<String> collections = userService.getCollectionNames();
        for (String str : collections) {
            System.out.println(str);
        }
        Pager pager = userService.selectPage(userBo, new Pager());
        List<UserBo> users = pager.getResult();
        for (UserBo user : users) {
            System.out.println(JSONObject.toJSONString(user));
        }
//        String response =
        assertEquals(10, pager.getTotal(), 0);
    }*/

    @Test
    public void testUserSearchItem(){
    }


} 
