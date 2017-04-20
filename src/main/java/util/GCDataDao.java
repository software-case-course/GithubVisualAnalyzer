package main.util;

import main.model.UserData;
import main.model.UserListData;
import org.omg.CORBA.TIMEOUT;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.SimpleTimeZone;
import java.util.concurrent.SynchronousQueue;

/**
 * Created by donne on 17-3-7.
 */
public class GCDataDao {
    private final static String CLASS_FOR_NAME = "com.mysql.jdbc.Driver";
    private final static String DB_NAME = "GithubData";
    private final static String DB_URL = "jdbc:mysql://localhost:3306/" +
            DB_NAME + "?useUnicode=true&characterEncoding=utf-8&useSSL=false";
    private final static String USR_NAME = "root";
    private final static String USR_PASSWORD = "mysqlOfUbuntu";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(CLASS_FOR_NAME);
            conn = DriverManager.getConnection(DB_URL, USR_NAME, USR_PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void close(Statement stmt, Connection conn) {
        if(stmt != null)
        {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        close(conn);
    }

    public static void close(ResultSet rs, Statement stmt, Connection conn) {
        if(rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        close(stmt, conn);
    }

    public static void createTable() {
        Connection conn = getConnection();
        Statement stmt = null;
        try {
            stmt = conn.createStatement();
            String sql = "create table if not exists user_list_data(login varchar(255), id bigint(29) not null, " +
                    "avatar_url varchar(255), gravatar_id varchar(255), url varchar(255), html_url varchar(255), " +
                    "followers_url varchar(255), following_url varchar(255), gists_url varchar(255), " +
                    "starred_url varchar(255), subscriptions_url varchar(255), organizations_url varchar(255), " +
                    "repos_url varchar(255), events_url varchar(255), received_events_url varchar(255), type varchar(255), " +
                    "site_admin bit(1), primary key(id))";
            stmt.execute(sql);
            sql = "CREATE TABLE IF NOT EXISTS USER_DATA(usrname VARCHAR(255), id BIGINT(29) NOT NULL, " +
                    "avatar_url VARCHAR(255), gravatar_id VARCHAR(255), url VARCHAR(255), html_url VARCHAR(255), " +
                    "followers_url VARCHAR(255), following_url VARCHAR(255), gists_url VARCHAR(255), " +
                    "starred_url VARCHAR(255), subscriptions_url VARCHAR(255), organizations_url VARCHAR(255), " +
                    "repos_url VARCHAR(255), type VARCHAR(255), site_admin BIT, name VARCHAR(255), " +
                    "company VARCHAR(255), blog VARCHAR(255), location VARCHAR(255), email VARCHAR(255), " +
                    "hireable BIT, bio VARCHAR(255), public_repos INTEGER, public_gists INTEGER, followers INTEGER, " +
                    "following INTEGER, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, " +
                    "updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP) DEFAULT CHARSET=utf8";
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        close(stmt, conn);
    }

    public static void insertUserData(UserData userData) {
        Connection conn = getConnection();
        PreparedStatement stmt = null;

        try {
            String sql = "INSERT INTO USER_DATA(usrname, id, avatar_url, gravatar_id, url, html_url, followers_url, "+
                    "following_url, gists_url, starred_url, subscriptions_url, organizations_url, repos_url, "+
                    "type, site_admin, name, company, blog, location, email, hireable, bio, public_repos, " +
                    "public_gists, followers, following, created_at, updated_at) " +
                    "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, userData.getUsrName());
            stmt.setLong(2, userData.getId());
            stmt.setString(3, userData.getAvatarUrl());
            stmt.setString(4, userData.getGravatarId());
            stmt.setString(5, userData.getUrl());
            stmt.setString(6, userData.getHtmlUrl());
            stmt.setString(7, userData.getFollowersUrl());
            stmt.setString(8, userData.getFollowingUrl());
            stmt.setString(9, userData.getGistsUrl());
            stmt.setString(10, userData.getStarredUrl());
            stmt.setString(11, userData.getSubscriptionsUrl());
            stmt.setString(12, userData.getOrganizationsUrl());
            stmt.setString(13, userData.getReposUrl());
            stmt.setString(14, userData.getType());
            stmt.setBoolean(15, userData.getSiteAdmin());
            stmt.setString(16, userData.getName());
            stmt.setString(17, userData.getCompany());
            stmt.setString(18, userData.getBlog());
            stmt.setString(19, userData.getLocation());
            stmt.setString(20, userData.getEmail());
            stmt.setBoolean(21, userData.getHireable());
            stmt.setString(22, userData.getBio());
            stmt.setInt(23, userData.getPublicRepos());
            stmt.setInt(24, userData.getPublicGists());
            stmt.setInt(25, userData.getFollowers());
            stmt.setInt(26, userData.getFollowing());
            SimpleDateFormat timeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String timeStr = timeFormat.format(userData.getCreatedAt());
            stmt.setTimestamp(27, Timestamp.valueOf(timeStr));
            timeStr = timeFormat.format(userData.getUpdatedAt());
            stmt.setTimestamp(28, Timestamp.valueOf(timeStr));

            int flag = stmt.executeUpdate();
            if (flag == 1) {
                System.out.println("insert user data successfully!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(stmt, conn);
        }
    }

    public static void insertUserListData(UserListData userListData) {
        Connection conn = getConnection();
        PreparedStatement stmt = null;
        try {
            String sql = "insert into user_list_data(login, id, avatar_url, gravatar_id, url, html_url, followers_url, "+
                    "following_url, gists_url, starred_url, subscriptions_url, organizations_url, repos_url, "+
                    "events_url, received_events_url, type, site_admin) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, userListData.getLogin());
            stmt.setLong(2, userListData.getId());
            stmt.setString(3, userListData.getAvatarUrl());
            stmt.setString(4, userListData.getGravatarId());
            stmt.setString(5, userListData.getUrl());
            stmt.setString(6, userListData.getHtmlUrl());
            stmt.setString(7, userListData.getFollowersUrl());
            stmt.setString(8, userListData.getFollowingUrl());
            stmt.setString(9, userListData.getGistsUrl());
            stmt.setString(10, userListData.getStarredUrl());
            stmt.setString(11, userListData.getSubscriptionsUrl());
            stmt.setString(12, userListData.getOrganizationsUrl());
            stmt.setString(13, userListData.getReposUrl());
            stmt.setString(14, userListData.getEventsUrl());
            stmt.setString(15, userListData.getReceivedEventsUrl());
            stmt.setString(16, userListData.getType());
            stmt.setBoolean(17, userListData.getSiteAdmin());
            int flag = stmt.executeUpdate();
            if (flag == 1) {
                System.out.println("insert data successfully!");
            }
            else {
                System.out.println("Fail data inserting!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(stmt, conn);
        }
    }


    public static List<UserData> getUserData() {
        Connection conn = getConnection();
        Statement stmt = null;
        ResultSet rs = null;
        List<UserData> userList= null;
        try {
            stmt = conn.createStatement();
            String sql = "SELECT * FROM USER_DATA";
            rs = stmt.executeQuery(sql);
            userList = new ArrayList<>();
            while (rs.next()) {
                UserData userData = new UserData();
                userData.setUsrName(rs.getString("usrname"));
                userData.setId(rs.getLong("id"));
                userData.setAvatarUrl(rs.getString("avatar_url"));
                userData.setGravatarId(rs.getString("gravatar_id"));
                userData.setUrl(rs.getString("url"));
                userData.setHtmlUrl(rs.getString("html_url"));
                userData.setFollowersUrl(rs.getString("followers_url"));
                userData.setFollowingUrl(rs.getString("following_url"));
                userData.setGistsUrl(rs.getString("gists_url"));
                userData.setStarredUrl(rs.getString("starred_url"));
                userData.setSubscriptionsUrl(rs.getString("subscriptions_url"));
                userData.setOrganizationsUrl(rs.getString("organizations_url"));
                userData.setReposUrl(rs.getString("repos_url"));
                userData.setType(rs.getString("type"));
                userData.setSiteAdmin(rs.getBoolean("site_admin"));
                userData.setName(rs.getString("name"));
                userData.setCompany(rs.getString("company"));
                userData.setBlog(rs.getString("blog"));
                userData.setLocation(rs.getString("location"));
                userData.setEmail(rs.getString("email"));
                userData.setHireable(rs.getBoolean("hireable"));
                userData.setBio(rs.getString("bio"));
                userData.setPublicRepos(rs.getInt("public_repos"));
                userData.setPublicGists(rs.getInt("public_gists"));
                userData.setFollowers(rs.getInt("followers"));
                userData.setFollowing(rs.getInt("following"));
                userData.setCreatedAt(rs.getTimestamp("created_at"));
                userData.setUpdatedAt(rs.getTimestamp("updated_at"));
                userList.add(userData);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(rs, stmt, conn);
        }
        return userList;
    }

}
