package main.java.controller;

import main.java.model.Language;
import main.java.util.*;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.kohsuke.github.GHUser;
import org.kohsuke.github.GHUserSearchBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
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

        List<Map<String, Object>> itemList = (List<Map<String, Object>>) modelMap.get("items");
        for(Map<String, Object> dev : itemList) {
            try {
                dev.put("avatar_url", GithubUtil.getAvatarUrl((String) dev.get("user")));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return modelMap;
    }

    /**
     *
     * @param type
     * @param since
     * @return
     */
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
        logger.info("getUserOnFollowers called");
        return GithubUtil.getUserSearchMap(requestMap, 5);
    }

    /**
     * get user language
     * @param range it only can be "year" or "month"
     * @param age 1..5 for "year" while 1..12 for "month"
     * @return
     */
    @RequestMapping(value = "/language/count")
    @ResponseBody
    public Map<String, Object> getUserLangNum(@RequestParam String range,
                                              @RequestParam int age) {
        logger.info("getUserLangNum called");

        Map<String, Object> responseMap = new LinkedHashMap<>();
        responseMap.put("count", 10);

        List<Map<String, Object>> itemsList = new ArrayList<>();
        for (Language lang : Language.values()){
            Map<String, Object> itemMap = new LinkedHashMap<>();
            itemMap.put("name", lang.toString());
            int value = GithubUtil.getUserLangNum(lang, range, age).list().getTotalCount();
            itemMap.put("value", value);
            itemsList.add(itemMap);
        }
        itemsList.sort(Comparator.comparing(m -> Integer.parseInt(m.get("value").toString())));
        itemsList = itemsList.stream().skip(itemsList.size()-10).collect(Collectors.toList());
        responseMap.put("items", itemsList);
        logger.info("getUserLangNum done");
        return responseMap;
    }

    /**
     *
     * @param type user or org
     * @param sort followers or repos
     * @return
     */
    @RequestMapping(value = "/language/rank")
    @ResponseBody
    public Map<String, Object> getUserWithLang(@RequestParam(required = false) String type,
                                               @RequestParam String sort) {
        Map<String, String> requestMap = new LinkedHashMap<>();
        Map<String, Object> responseMap = new LinkedHashMap<>();
        requestMap.put("type", type);
        requestMap.put("sort", sort);
        List<Map<String, Object>> langList = new ArrayList<>();
        for (Language lang : Language.values()) {
            if(lang == Language.ALL) continue;
            GHUserSearchBuilder ghUserSearchBuilder = GithubUtil.getUserSearch(requestMap)
                .language(lang.toString());
            Map<String, Object> langMap = new LinkedHashMap<>();
            langMap.put("name", lang.toString());
            langMap.put("total_count", ghUserSearchBuilder.list().getTotalCount());
            int count = 6;
            List<Map<String, Object>> userList = new ArrayList<>();
            for(GHUser ghUser : ghUserSearchBuilder.list()) {
                Map<String, Object> userMap = new LinkedHashMap<>();
                userMap.put("login", ghUser.getLogin());
                userMap.put("id", ghUser.getId());
                userMap.put("avatar_url", ghUser.getAvatarUrl());
                userMap.put("url", ghUser.getUrl());
                userMap.put("html_url", ghUser.getHtmlUrl());
                userList.add(userMap);
                if(count -- <= 0)
                    break;
            }
            langMap.put("items", userList);
            langList.add(langMap);
        }
        int count = 5;
        langList.sort(Comparator.comparing(m -> Integer.parseInt(m.get("total_count").toString())));
        langList = langList.stream().skip(langList.size()-count).collect(Collectors.toList());
        responseMap.put("count", count);
        List<Map<String, Object>> items = new ArrayList<>();
        for (Map<String, Object> langMap : langList) {
            items.add(langMap);
        }
        responseMap.put("items", items);
        return responseMap;
    }


    @RequestMapping(value = "/location/count")
    @ResponseBody
    public Map<String, Object> getUserLocNum(@RequestParam String type) {
        Map<String, Object> responseMap = new LinkedHashMap<>();
        responseMap.put("total_count", 1);

        Map<String, Object> map = new LinkedHashMap<>();
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
