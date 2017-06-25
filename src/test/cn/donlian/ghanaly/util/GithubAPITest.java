package cn.donlian.ghanaly.util;

import org.junit.Test;
import org.junit.Before;
import org.junit.After;

import static org.junit.Assert.assertEquals;

/**
 * GithubAPI Tester.
 *
 * @author <Authors name>
 * @version 1.0
 * @since <pre>六月 7, 2017</pre>
 */
public class GithubAPITest {

    @Before
    public void before() throws Exception {
    }

    @After
    public void after() throws Exception {
    }

    /**
     * Method: getSearch(Map<String, String> qualifier, String sort, String searchObject, int perPage)
     */
    @Test
    public void testGetSearch() throws Exception {
        //TODO: Test goes here...
    }

    /**
     * Method: getData(String path)
     */
    @Test
    public void testGetData() throws Exception {
        //TODO: Test goes here...
        String path = "https://api.github.com/users/donlian";
        path = path.substring(path.indexOf("com")+3);
        assertEquals("/users/donlian", path);
    }


} 
