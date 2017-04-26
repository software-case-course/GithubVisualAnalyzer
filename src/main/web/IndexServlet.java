package main.web;

import main.java.model.Language;
import main.java.util.TrendingUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by donne on 17-4-19.
 */
@WebServlet(name = "IndexServlet", urlPatterns = "/")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String userTrendingJson = TrendingUtil.getTrendingJson("users", "daily", Language.ALL);
        request.setAttribute("users_trending", userTrendingJson);

        String reposTrendingJson = TrendingUtil.getTrendingJson("repos", "daily", Language.ALL);
        request.setAttribute("repos_trending", reposTrendingJson);

    }
}