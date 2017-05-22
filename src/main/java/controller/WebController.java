package main.java.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by donne on 17-5-18.
 */
@Controller
public class WebController {

    private static final Log logger = LogFactory.getLog(WebController.class);

    @RequestMapping(value = "/user")
    public String userPage() {
        logger.info("userPage called");
        return "userCharts";
    }

    @RequestMapping(value = "/repos")
    public String reposPage() {
        logger.info("reposPage called");
        return "repos";
    }

}
