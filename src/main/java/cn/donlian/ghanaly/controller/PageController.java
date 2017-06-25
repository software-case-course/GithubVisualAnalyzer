package cn.donlian.ghanaly.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by donne on 17-6-8.
 */

@Controller
@RequestMapping("/")
public class PageController {

    private static final Log logger = LogFactory.getLog(PageController.class);

    @RequestMapping("index")
    public String index() {
        return "index";
    }

    @RequestMapping("area")
    public String area() {
        return "area";
    }

    @RequestMapping("language/china")
    public String languageInChina() {
        return "china";
    }

    @RequestMapping("language/world")
    public String languageInWorld() {
        return "world";
    }

    @RequestMapping("user")
    public String user() {
        return "user";
    }

    @RequestMapping("repos")
    public String repos() {
        return "repos";
    }

    @RequestMapping("login")
    public String login() {
        return "login";
    }

    @RequestMapping("signup")
    public String signup() {
        return "signup";
    }

    @RequestMapping("search")
    public String search() {
        return "search";
    }

    @RequestMapping("tech_1")
    public String techPage1() {
        return "technology_1";
    }

    @RequestMapping("tech_2")
    public String techPage2() {
        return "technology_2";
    }

    @RequestMapping("tech_3")
    public String techPage3() {
        return "technology_3";
    }

    @RequestMapping("tech_4")
    public String techPage4() {
        return "technology_4";
    }

    @RequestMapping("tech_5")
    public String techPage5() {
        return "technology_5";
    }


}
