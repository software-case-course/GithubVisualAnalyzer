package cn.donlian.ghanaly.controller;

import cn.donlian.ghanaly.configuration.*;
import cn.donlian.ghanaly.emnu.Language;
import cn.donlian.ghanaly.util.GithubAPI;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.LinkedHashMap;
import java.util.Map;

import static org.junit.Assert.fail;

/**
 * StorageController Tester.
 *
 * @author <Authors name>
 * @version 1.0
 * @since <pre>六月 7, 2017</pre>
 */
@Component
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {GHAnalyWebAppInitializer.class,
        MongoConfig.class, WebConfig.class, RootConfig.class, ServletInitializer.class})
public class StorageControllerTest {

    @Before
    public void before() throws Exception {
    }

    @After
    public void after() throws Exception {
    }

    /**
     * Method: saveUserYear()
     */
    @Test
    public void testSaveUserYear() throws Exception {
        //TODO: Test goes here...
//        StorageController controller = new StorageController();
//        MockMvc mockMvc = standaloneSetup(controller).build();
//
//        mockMvc

        String created = "2017-01-01..2017-06-07";
        Language lang = Language.JAVA;
        String repos = ">=1";

        Map<String, String> map = new LinkedHashMap<>();
        map.put("created", created);
        map.put("language", "java");
        map.put("repos", repos);
        String json = GithubAPI.getSearch(map, "followers", "users", 10);
        fail(json);
    }


} 
