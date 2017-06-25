package cn.donlian.ghanaly.controller;

import cn.donlian.ghanaly.bo.Pager;
import cn.donlian.ghanaly.emnu.Language;
import cn.donlian.ghanaly.service.ReposSearchItemService;
import cn.donlian.ghanaly.service.UserSearchItemService;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SimplePropertyPreFilter;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by donne on 17-5-24.
 */
@Controller
@Scope("prototype")
@RequestMapping("api")
public class IndexController {

    private static final Log logger = LogFactory.getLog(IndexController.class);

    @Autowired
    private UserSearchItemService userSearchItemService;

    @Autowired
    private ReposSearchItemService reposSearchItemService;

    @RequestMapping(value = "index")
    public @ResponseBody
    Pager index(ModelMap modelMap) {
//        logger.info("index called");
//        UserBo userBo = new UserBo();
//        userBo.setPassword("junlenet");
//        userBo.setPhone("130279814XX");
//        userBo.setSex("男");
//        userBo.setUserName("www.junlenet.com");
//        userBo.setUserNo("1000524100250");
//        userBo = userService.save(userBo);
//        Set<String> collections = userService.getCollectionNames();
//        for (String str : collections) {
//            System.out.println(str);
//        }
//        //Pager pager = userService.selectPage(userBo, new Pager());
//        //List<UserBo> users = pager.getResult();
//        for (UserBo user : users) {
//            System.out.println(JSONObject.toJSONString(user));
//        }
////        String response =
//        return pager;
        return null;
    }

    @RequestMapping(value = "search/user/lang")
    @ResponseBody
    public String getLangWithFiveYear() {
        SimplePropertyPreFilter filter = new SimplePropertyPreFilter("language", "total_count");
        return JSONObject.toJSONString(userSearchItemService.findByCreatedAndLocation("all", "All"), filter);
    }

    @RequestMapping(value = "search/user/lang_rank")
    @ResponseBody
    public String getLangRanking() {
        SimplePropertyPreFilter filter = new SimplePropertyPreFilter("language", "nodes", "id",
                "login", "html_url", "name", "public_repos", "followers_count", "following_count");
        return JSONObject.toJSONString(userSearchItemService.findByCreated("all"), filter);
    }

    @RequestMapping(value = "search/user/location")
    @ResponseBody
    public String getLocationStatistics() {
        SimplePropertyPreFilter filter = new SimplePropertyPreFilter("location", "total_count");
        return JSONObject.toJSONString(userSearchItemService.findByLang(Language.ALL), filter);
    }

    @RequestMapping(value = "search/repos/lang")
    @ResponseBody
    public String getLangInRepos() {
        SimplePropertyPreFilter filter = new SimplePropertyPreFilter("language", "total_count");
        return JSONObject.toJSONString(reposSearchItemService, filter);
    }

    @RequestMapping(value = "search/repos/lang_year")
    @ResponseBody
    public String getLangFiveYear() {
        SimplePropertyPreFilter filter = new SimplePropertyPreFilter("language", "total_count");
        return JSONObject.toJSONString(reposSearchItemService.findByCreated("all"), filter);

    }

}
