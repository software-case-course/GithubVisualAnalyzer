package cn.donlian.ghanaly.util;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by donne on 17-6-2.
 */
public class GithubSearchFilter {

    //user filter
    private static List<String> createdList;

    private static List<String> followersList;

    private static List<String> reposList;

    //repos filter

    private static List<String> starsList;

    private static List<String> forksList;

    private static List<List<String>> locationList;

    private static List<String> todayCreatedList;

    private static List<String> monthCreatedList;

    private static List<String> yearCreatedList;


    static {
        String today = DateUtil.getToday();
        createdList = new ArrayList<>();
        try {
            createdList.add("all");

            //year
            createdList.add(DateUtil.addYear(today, -1) + ".." + today);
            createdList.add(DateUtil.addYear(today, -2) + ".." + DateUtil.addYear(today, -1));
            createdList.add(DateUtil.addYear(today, -3) + ".." + DateUtil.addYear(today, -2));
            createdList.add(DateUtil.addYear(today, -4) + ".." + DateUtil.addYear(today, -3));
            createdList.add(DateUtil.addYear(today, -5) + ".." + DateUtil.addYear(today, -4));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        locationList = LocationUtil.getLocationList();


        followersList = new ArrayList<>();
        followersList.add("all");
//        followersList.add(">=1000");
//        followersList.add("500..1000");
//        followersList.add("100..500");
//        followersList.add("50..100");
//        followersList.add("25..50");
//        followersList.add("10..25");
//        followersList.add("5..10");
//        followersList.add("2..5");
//        followersList.add("1..2");
//        followersList.add("0..0");

        reposList = new ArrayList<>();
        reposList.add(">=1");
//        reposList.add(">=1000");
//        reposList.add("500..1000");
//        reposList.add("100..500");
//        reposList.add("50..100");
//        reposList.add("25..50");
//        reposList.add("10..25");
//        reposList.add("5..10");
//        reposList.add("2..5");
//        reposList.add("1..2");

        starsList = new ArrayList<>();
        starsList.add(">=1");

        forksList = new ArrayList<>();
        forksList.add("all");


    }

    public static List<String> getCreatedList() {
        return createdList;
    }

    public static List<String> getFollowersList() {
        return followersList;
    }

    public static List<String> getReposList() {
        return reposList;
    }

    public static List<String> getStarsList() {
        return starsList;
    }

    public static List<String> getForksList() {
        return forksList;
    }

    public static List<List<String>> getLocationList() {
        return locationList;
    }
}
