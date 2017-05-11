package main.java.controller;

import main.java.model.Language;
import main.java.util.HttpUtil;
import main.java.util.JsonUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by donne on 17-5-10.
 */
@Controller
@RequestMapping("/api/user")
public class UserController {

    private static final Log logger = LogFactory.getLog(UserController.class);

    @RequestMapping(value = "/trending", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public Map<String, Object> getUserTrending(@RequestParam(required = false) String since,
                                               @RequestParam(required = false) String language) {
        logger.info("getUserTrending called");
        Language lang;
        if(language != null)
            lang = Language.valueOf(language.toUpperCase());
        else
            lang = Language.ALL;
        String UserTrendingJson = getTrendingJson("users", since, lang);
        Map<String, Object> modelMap = JsonUtil.json2map(UserTrendingJson);
        return modelMap;
    }

    private String getTrendingJson(String type, String since, Language language) {
        String trendingApi = "https://trendings.herokuapp.com/api";
        if(type.equals("repositories")) {
            if (language == Language.ALL)
                return HttpUtil.getJsonContent(trendingApi + "/repo/?since=" + since, "GET", null);
            else
                return HttpUtil.getJsonContent(trendingApi + "/repo/" + language.toString() + "/?since=" + since,
                        "GET", null);
        }
        else if(type.equals("users")) {
            if (language == Language.ALL)
                return HttpUtil.getJsonContent(trendingApi + "/dev/?since=" + since, "GET", null);
            else
                return HttpUtil.getJsonContent(trendingApi + "/dev/" + language.toString() + "/?since=" + since,
                        "GET", null);
        }
        else return null;
    }

}
