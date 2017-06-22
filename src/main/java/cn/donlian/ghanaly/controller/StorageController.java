package cn.donlian.ghanaly.controller;

import cn.donlian.ghanaly.bo.ReposSearchItem;
import cn.donlian.ghanaly.bo.UserSearchItem;
import cn.donlian.ghanaly.bo.object.Repository;
import cn.donlian.ghanaly.bo.object.User;
import cn.donlian.ghanaly.emnu.Language;
import cn.donlian.ghanaly.service.ReposSearchItemService;
import cn.donlian.ghanaly.service.UserSearchItemService;
import cn.donlian.ghanaly.util.DateUtil;
import cn.donlian.ghanaly.util.GithubAPI;
import cn.donlian.ghanaly.util.GithubSearchFilter;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * Created by donne on 17-6-6.
 */
@Controller
@RequestMapping("storage")
public class StorageController {

    private Log logger = LogFactory.getLog(StorageController.class);

    private final UserSearchItemService userSearchItemService;

    private  final ReposSearchItemService reposSearchItemService;

    private List<String> createdFilters = GithubSearchFilter.getCreatedList();
    private List<String> followersFilters = GithubSearchFilter.getFollowersList();
    private List<List<String>> locationFilters = GithubSearchFilter.getLocationList();
    private List<String> reposFilters = GithubSearchFilter.getReposList();
    private List<String> starsFilters = GithubSearchFilter.getStarsList();
    private List<String> forksFilters = GithubSearchFilter.getForksList();

    @Autowired
    public StorageController(UserSearchItemService userSearchItemService, ReposSearchItemService reposSearchItemService) {
        this.userSearchItemService = userSearchItemService;
        this.reposSearchItemService = reposSearchItemService;
    }

    @RequestMapping("users/")
    @ResponseBody
    public String saveUserYear() {

        for (List<String> location : locationFilters) {
            UserSearchItem userSearchItem = new UserSearchItem();

            //数据请求MAP
            Map<String, String> map = new LinkedHashMap<>();

            userSearchItem.setCreated("all");
            userSearchItem.setFollowers("all");
            userSearchItem.setLanguage(Language.ALL);
            userSearchItem.setRepos(">=1");
            userSearchItem.setLocation(location.get(1));
            userSearchItem.setSearchCreated(DateUtil.format(new Date(),"yyyy-MM-dd"));

            //添加参数
            if(! "All".equals(location.get(1))) {
                StringBuilder locationList = new StringBuilder();
                for (String loc : location) {
                    locationList.append(loc).append(" ");
                }
                locationList = new StringBuilder(locationList.substring(0, locationList.length() - 1));
                map.put("location", locationList.toString());
            }
            map.put("repos", ">=1");

            String json = GithubAPI.getSearch(map, "followers", "users", 5);
            JSONObject jsonObject = JSON.parseObject(json);
            userSearchItem.setTotalCount((Integer) jsonObject.get("total_count"));
            JSONArray jsonArray = (JSONArray) jsonObject.get("items");
            List<User> userList = new ArrayList<>();
            for (int i = 0; i < jsonArray.size(); i ++) {
                String userStr = GithubAPI.getData(jsonArray.getJSONObject(i).get("url").toString());
                userList.add(JSON.parseObject(userStr, User.class));
            }
            userSearchItem.setNodes(userList);

            userSearchItemService.upsert(userSearchItem);

            logger.info( "All all all >=1 " + location.get(1) + " done" );
        }

        for(Language language : Language.values()) {
            for (String created : createdFilters) {
                for (String followers : followersFilters) {
                    for (String repos : reposFilters) {
                        UserSearchItem userSearchItem = new UserSearchItem();

                        //数据请求MAP
                        Map<String, String> map = new LinkedHashMap<>();

                        userSearchItem.setCreated(created);
                        userSearchItem.setFollowers(followers);
                        userSearchItem.setLanguage(language);
                        userSearchItem.setRepos(repos);
                        userSearchItem.setLocation("All");
                        userSearchItem.setSearchCreated(DateUtil.format(new Date(),"yyyy-MM-dd"));

                        //添加参数
                        if(! "all".equals(created)) map.put("created", created);
                        if(! "all".equals(followers)) map.put("followers", followers);
                        if(! "All".equals(language.toString())) map.put("language", language.toString());
                        map.put("repos", repos);

                        String json = GithubAPI.getSearch(map, "followers", "users", 5);
                        JSONObject jsonObject = JSON.parseObject(json);
                        userSearchItem.setTotalCount((Integer) jsonObject.get("total_count"));
                        JSONArray jsonArray = (JSONArray) jsonObject.get("items");
                        List<User> userList = new ArrayList<>();
                        for (int i = 0; i < jsonArray.size(); i ++) {
                            String userStr = GithubAPI.getData(jsonArray.getJSONObject(i).get("url").toString());
                            userList.add(JSON.parseObject(userStr, User.class));
                        }
                        userSearchItem.setNodes(userList);

                        userSearchItemService.upsert(userSearchItem);

                        logger.info(language.toString() + " " + created + " " + followers + " " + repos + " done" );
                    }
                }
            }
        }
        return "success!";
    }

    @RequestMapping("repos/")
    @ResponseBody
    public String saveReposSearch() {
        for(Language language : Language.values()) {
            for (String created : createdFilters) {
                for (String star : starsFilters) {
                    for (String fork : forksFilters) {
                        ReposSearchItem reposSearchItem = new ReposSearchItem();
                        Map<String, String> map = new LinkedHashMap<>();

                        reposSearchItem.setCreated(created);
                        reposSearchItem.setStars(star);
                        reposSearchItem.setLanguage(language);
                        reposSearchItem.setForks(fork);
                        reposSearchItem.setPushed("all");
                        reposSearchItem.setTopic("all");
                        reposSearchItem.setSearchCreated(DateUtil.format(new Date(), "yyyy-MM-dd HH-mm-ss"));

                        if(! "all".equals(created)) map.put("created", created);
                        map.put("stars", star);
                        if(! "All".equals(language.toString())) map.put("language", language.toString());
                        if(! "all".equals(fork)) map.put("forks", fork);

                        String json = GithubAPI.getSearch(map, "stars", "repositories", 5);
                        JSONObject jsonObject = JSON.parseObject(json);
                        reposSearchItem.setTotalCount((Integer) jsonObject.get("total_count"));
                        JSONArray jsonArray = (JSONArray) jsonObject.get("items");
                        List<Repository> reposList = new ArrayList<>();
                        for (int i = 0; i < jsonArray.size(); i ++) {
                            String reposStr = GithubAPI.getData(jsonArray.getJSONObject(i).get("url").toString());
                            reposList.add(JSON.parseObject(reposStr, Repository.class));
                        }
                        reposSearchItem.setNodes(reposList);

                        reposSearchItemService.upsert(reposSearchItem);

                        logger.info(language.toString() + " " + created + " " + star + " " + fork + " " + " done" );
                    }
                }
            }
        }
        return "success";
    }
}
