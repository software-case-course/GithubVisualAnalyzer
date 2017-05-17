package main.java.controller;

import main.java.model.Language;
import main.java.util.*;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.kohsuke.github.GHUserSearchBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collector;
import java.util.stream.Collectors;

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
        String UserTrendingJson = GithubUtil.getTrendingJson("users", since, lang);
        Map<String, Object> modelMap = JsonUtil.json2map(UserTrendingJson);
        return modelMap;
    }

    @RequestMapping(value = "/followers", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public Map<String, Object> getUserOnFollowers(@RequestParam(required = false) String type,
                                                  @RequestParam(required = false) String since) {
        logger.info("getUserOnFollowers called");

        Map<String, String> requestMap = new HashMap<>();
        if(type != null) requestMap.put("type", type);
        if(since != null) {
            String created = ">=";
            switch (since) {
                case "day": created += DateUtil.getToday(); break;
                case "week": created += DateUtil.getFirstDayOfThisWeek(); break;
                case "month": created += DateUtil.getFirstDayOfThisMonth(); break;
                case "year": created += DateUtil.getFirstDayOfThisMonth(); break;
                default: break;
            }
            requestMap.put("created", created);
        }
        return GithubUtil.getUserSearchMap(requestMap, 10);
    }

    @RequestMapping(value = "/language/count")
    @ResponseBody
    public Map<String, Object> getUserLangNum(@RequestParam(required = false) String range,
                                              @RequestParam(required = false) int age) {
        logger.info("getUserLangNum called");

        Map<String, Object> responseMap = new HashMap<>();

        for (Language lang : Language.values()){
            responseMap.put(lang.toString(), GithubUtil.getUserLangNum(lang, range, age));
        }
        logger.info("getUserLangNum done");
        return responseMap;
    }

    @RequestMapping(value = "/language/rank")
    @ResponseBody
    public Map<String, Object> getUserWithLang(@RequestParam(required = false) String type,
                                           @RequestParam(required = false) String sort) {
        Map<String, String> requestMap = new HashMap<>();
        Map<String, Object> responseMap = new HashMap<>();
        requestMap.put("type", type);
        requestMap.put("sort", sort);
        requestMap.put("language", "");
        for (Language lang : Language.values()) {
            responseMap.put(lang.toString(), GithubUtil.getUserSearch(requestMap)
                    .language(lang.toString()).list().asList().stream().limit(6).collect(Collectors.toList()));
        }
        return responseMap;
    }

    @RequestMapping(value = "/location/count")
    @ResponseBody
    public Map<String, Object> getUserLocNum(@RequestParam String type) {
        Map<String, Object> responseMap = new HashMap<>();
        responseMap.put("total_count", 1);

        Map<String, Object> map = new HashMap<>();
        map.put("name", "china");

        int cnCount = 0;
        for(String country : LocationUtil.getCN()) {
            cnCount += GithubUtil.getUserLocationNum(type, country);
        }
        map.put("value", cnCount);

        List<Map<String, Object>> provinceList = new ArrayList<>();
        List<String> pCNs = LocationUtil.getProvincesCN();
        List<String> pENs = LocationUtil.getProvincesEN();
        for(int i = 0; i < pCNs.size(); i ++) {
            Map<String, Object> temp = new HashMap<>();
            String pEN = pENs.get(i);
            String pCN = pCNs.get(i);
            temp.put("name", pENs.get(i));
            temp.put("value", GithubUtil.getUserLocationNum(type, pEN) + GithubUtil.getUserLocationNum(type, pCN));
            provinceList.add(temp);
        }
        map.put("items", provinceList);
        return map;
    }


}
