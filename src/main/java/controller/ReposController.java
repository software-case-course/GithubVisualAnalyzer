package main.java.controller;

import main.java.model.Language;
import main.java.util.GithubUtil;
import main.java.util.JsonUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * Created by donne on 17-5-12.
 */
@Controller
@RequestMapping("/api/repos")
public class ReposController {
    private static final Log logger = LogFactory.getLog(ReposController.class);

    @RequestMapping(value = "/trending", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public Map<String, Object> getUserTrending(@RequestParam(required = false) String since,
                                               @RequestParam(required = false) String language) {
        logger.info("getReposTrending called");
        Language lang;
        if(language != null)
            lang = Language.valueOf(language.toUpperCase());
        else
            lang = Language.ALL;
        String UserTrendingJson = GithubUtil.getTrendingJson("repositories", since, lang);
        Map<String, Object> modelMap = JsonUtil.json2map(UserTrendingJson);
        return modelMap;
    }
}
