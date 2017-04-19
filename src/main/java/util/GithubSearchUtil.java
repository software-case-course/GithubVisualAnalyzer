package main.java.util;

import org.kohsuke.github.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by donne on 17-4-19.
 */
public class GithubSearchUtil {
    private static GitHub gitHub;

    static {
        try {
            gitHub = GitHub.connect();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static List<GHUser> searchUser(String q, GHUserSearchBuilder.Sort sort, GHDirection order, int count) {
        List<GHUser> ghUserList;
        GHUserSearchBuilder ghUserSearchLocation = gitHub.searchUsers().q(q).order(order);
        ghUserSearchLocation.sort(sort);
        PagedIterator<GHUser> iterator = ghUserSearchLocation.list().iterator();
        ghUserList = new ArrayList<>();
        while(count -- > 0 && iterator.hasNext()) {
            GHUser ghUser = iterator.next();
            ghUserList.add(ghUser);
        }
        return ghUserList;
    }

    //public static List<search> searchRepos(String q, G)
}
