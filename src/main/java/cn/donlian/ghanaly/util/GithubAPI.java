package cn.donlian.ghanaly.util;

import com.jcabi.github.Github;
import com.jcabi.github.RtGithub;
import com.jcabi.http.Request;
import com.jcabi.http.response.JsonResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;
import java.util.Properties;

/**
 * Created by donne on 17-5-29.
 */
public class GithubAPI {

    private static Github github;
    private static Log logger = LogFactory.getLog(GithubAPI.class);

    static {
        Properties prop = new Properties();
        try {
            prop.load(new FileInputStream("/home/donne/.github"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String oauth = prop.getProperty("oauth");
        github = new RtGithub(oauth);
    }

    /**
     * get Github Search Json Data by jcabi API
     * see https://developer.github.com/v3/search/
     * @param qualifier Qualifier Map
     * @param sort The sort filed
     * @param searchObject Can be repositories, commits, issues or users
     * @param perPage The num of per page(up to 1000)
     * @return JSON result with String
     */
    public static String getSearch(Map<String, String> qualifier, String sort,
                                   String searchObject, int perPage) {
        String q = "";
        for(Map.Entry<String, String> entry : qualifier.entrySet()) {
            if(entry.getKey().equals("location")) {
                String[] locList = entry.getValue().split(" ");
                for (String loc : locList) {
                    q += "location:" + loc + " ";
                }
            } else q += entry.getKey() + ":" + entry.getValue() + " ";
        }
        if(! "".equals(q)) q = q.substring(0, q.length()-1);
        logger.info("Request: " + q);
        String ret = null;
        try {
             ret = github.entry().uri().path("/search/" + searchObject)
                    .queryParam("q", q)
                    .queryParam("sort", sort)
                    .queryParam("per_page", perPage)
                    .back().method(Request.GET).fetch().as(JsonResponse.class).body();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return ret;
    }

    public static String getData(String path) {
        path = path.substring(path.lastIndexOf("com") + 3);
        String ret = null;
        try {
            ret = github.entry().uri().path(path)
                    .back().method(Request.GET).fetch().as(JsonResponse.class).body();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return ret;
    }

}
