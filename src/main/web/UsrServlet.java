package main.web;

import main.java.util.GithubSearchUtil;
import org.kohsuke.github.GHDirection;
import org.kohsuke.github.GHUser;
import org.kohsuke.github.GHUserSearchBuilder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by donne on 17-4-13.
 */
@WebServlet(name = "UsrServlet", urlPatterns = "/user")
public class UsrServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        //get the ranking of all users
        List<GHUser> ghUserList = GithubSearchUtil.searchUser("followers:>=850",
                GHUserSearchBuilder.Sort.FOLLOWERS, GHDirection.DESC, 6);
        request.setAttribute("all_users_list", ghUserList);

        //get the ranking of chinese users
        List<GHUser> ghUserNationList = GithubSearchUtil.searchUser("location:china",
                GHUserSearchBuilder.Sort.FOLLOWERS, GHDirection.DESC, 6);
        request.setAttribute("nation_users_list", ghUserNationList);



        RequestDispatcher requestDispatcher = request.getRequestDispatcher("userCharts.jsp");
        requestDispatcher.forward(request, response);
    }
}
