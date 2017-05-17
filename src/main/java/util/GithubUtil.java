package main.java.util;

import main.java.model.Language;
import org.kohsuke.github.GHDirection;
import org.kohsuke.github.GHUser;
import org.kohsuke.github.GHUserSearchBuilder;
import org.kohsuke.github.GitHub;

import java.io.IOException;
import java.text.ParseException;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Created by donne on 17-5-12.
 */



public class GithubUtil {

    public static String ApiIndex = "https://api.github.com";
    private static GitHub gitHub;

    static {
        try {
            gitHub = GitHub.connect();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     *
     * @param type "repositories" or "users"
     * @param since default daily, it can be "daily", "weekly", or "monthly"
     * @param language enum
     * @return jsonStr
     */
    public static String getTrendingJson(String type, String since, Language language) {
        String trendingApi = "https://trendings.herokuapp.com/api";
        switch (type) {
            case "repositories":
                if (language == Language.ALL)
                    return HttpUtil.getJsonContent(trendingApi + "/repo/?since=" + since, "GET", null);
                else
                    return HttpUtil.getJsonContent(trendingApi + "/repo/" + language.toString() + "/?since=" + since,
                            "GET", null);
            case "users":
                if (language == Language.ALL)
                    return HttpUtil.getJsonContent(trendingApi + "/dev/?since=" + since, "GET", null);
                else
                    return HttpUtil.getJsonContent(trendingApi + "/dev/" + language.toString() + "/?since=" + since,
                            "GET", null);
            default:
                return null;
        }
    }

    public static Map<String, Object> getUserSearchMap(Map<String, String> searchMap, int count) {

        GHUserSearchBuilder ghUSBuilder = getUserSearch(searchMap);
        List<GHUser> ghUserList = ghUSBuilder.list().asList()
                .stream().limit(count).collect(Collectors.toList());

        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("total_count", ghUSBuilder.list().getTotalCount());
        map.put("item", ghUserList);
        return map;
    }

    public static GHUserSearchBuilder getUserSearch(Map<String, String> searchMap) {
        GHUserSearchBuilder ghUSBuilder = gitHub.searchUsers();
        for(Map.Entry<String, String> entry : searchMap.entrySet()) {
            String key = entry.getKey();
            switch (key) {
                case "q":
                    ghUSBuilder = ghUSBuilder.q(entry.getValue());
                    break;
                case "sort" :
                    ghUSBuilder = ghUSBuilder.sort(GHUserSearchBuilder.Sort.valueOf(entry.getValue().toUpperCase()));
                    break;
                case "order":
                    ghUSBuilder = ghUSBuilder.order(GHDirection.valueOf(entry.getValue().toUpperCase()));
                    break;
                case "type":
                    ghUSBuilder = ghUSBuilder.type(entry.getValue());
                    break;
                case "in":
                    ghUSBuilder = ghUSBuilder.in(entry.getValue());
                    break;
                case "repos":
                    ghUSBuilder = ghUSBuilder.repos(entry.getValue());
                    break;
                case "location":
                    ghUSBuilder = ghUSBuilder.location(entry.getValue());
                    break;
                case "created":
                    ghUSBuilder = ghUSBuilder.created(entry.getValue());
                    break;
                case "followers":
                    ghUSBuilder = ghUSBuilder.followers(entry.getValue());
                    break;
            }
        }
        return ghUSBuilder;
    }

    public static int getUserLangNum(Language lang, String unit, int age) {

        String joined = ">";
        String today = DateUtil.getToday();
        try {
            switch (unit) {
                case "year":
                    joined += DateUtil.addYear(today, 0 - age);
                    break;
                case "month":
                    joined += DateUtil.addMonth(today, 0 - age);
                    break;
                default:
                    joined = null;
                    break;
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        if(lang != Language.ALL)
            return gitHub.searchUsers()
                    .language(lang.toString())
                    .created(joined).list().getTotalCount();
        else return gitHub.searchUsers()
                .created(joined).list().getTotalCount();
    }

    public static int getUserLocationNum(String type, String location) {
        return gitHub.searchUsers()
                .type(type)
                .location(location)
                .list().getTotalCount();

    }

}
