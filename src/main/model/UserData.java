package model;


import java.util.Date;
import com.alibaba.fastjson.annotation.JSONField;

/**
 * Created by donne on 17-3-16.
 */
public class UserData {

    @JSONField(name = "login")
    private String usrName;
    private int id;
    @JSONField(name = "avatar_url")
    private String avatarUrl;
    @JSONField(name = "gravatar_id")
    private String gravatarId;
    private String url;
    @JSONField(name = "html_url")
    private String htmlUrl;
    @JSONField(name = "followers_url")
    private String followersUrl;
    @JSONField(name = "following_url")
    private String followingUrl;
    @JSONField(name = "gists_url")
    private String gistsUrl;
    @JSONField(name = "starred_url")
    private String starredUrl;
    @JSONField(name = "subscriptions_url")
    private String subscriptionsUrl;
    @JSONField(name = "organizations_url")
    private String organizationsUrl;
    @JSONField(name = "repos_url")
    private String reposUrl;
    private String type;
    @JSONField(name = "site_admin")
    private boolean siteAdmin;
    private String name;
    private String company;
    private String blog;
    private String location;
    private String email;
    private boolean hireable;
    private String bio;
    @JSONField(name = "public_repos")
    private int publicRepos;
    @JSONField(name = "public_gists")
    private int publicGists;
    private int followers;
    private int following;
    @JSONField(name = "created_at")
    private Date createdAt;
    @JSONField(name = "updated_at")
    private Date updatedAt;
    public void setUsrName(String usrName) {
        this.usrName = usrName;
    }
    public String getUsrName() {
        return usrName;
    }

    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return id;
    }

    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }
    public String getAvatarUrl() {
        return avatarUrl;
    }

    public void setGravatarId(String gravatarId) {
        this.gravatarId = gravatarId;
    }
    public String getGravatarId() {
        return gravatarId;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    public String getUrl() {
        return url;
    }

    public void setHtmlUrl(String htmlUrl) {
        this.htmlUrl = htmlUrl;
    }
    public String getHtmlUrl() {
        return htmlUrl;
    }

    public void setFollowersUrl(String followersUrl) {
        this.followersUrl = followersUrl;
    }
    public String getFollowersUrl() {
        return followersUrl;
    }

    public void setFollowingUrl(String followingUrl) {
        this.followingUrl = followingUrl;
    }
    public String getFollowingUrl() {
        return followingUrl;
    }

    public void setGistsUrl(String gistsUrl) {
        this.gistsUrl = gistsUrl;
    }
    public String getGistsUrl() {
        return gistsUrl;
    }

    public void setStarredUrl(String starredUrl) {
        this.starredUrl = starredUrl;
    }
    public String getStarredUrl() {
        return starredUrl;
    }

    public void setSubscriptionsUrl(String subscriptionsUrl) {
        this.subscriptionsUrl = subscriptionsUrl;
    }
    public String getSubscriptionsUrl() {
        return subscriptionsUrl;
    }

    public void setOrganizationsUrl(String organizationsUrl) {
        this.organizationsUrl = organizationsUrl;
    }
    public String getOrganizationsUrl() {
        return organizationsUrl;
    }

    public void setReposUrl(String reposUrl) {
        this.reposUrl = reposUrl;
    }
    public String getReposUrl() {
        return reposUrl;
    }

    public void setType(String type) {
        this.type = type;
    }
    public String getType() {
        return type;
    }

    public void setSiteAdmin(boolean siteAdmin) {
        this.siteAdmin = siteAdmin;
    }
    public boolean getSiteAdmin() {
        return siteAdmin;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getName() {
        return name;
    }

    public void setCompany(String company) {
        this.company = company;
    }
    public String getCompany() {
        return company;
    }

    public void setBlog(String blog) {
        this.blog = blog;
    }
    public String getBlog() {
        return blog;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    public String getLocation() {
        return location;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getEmail() {
        return email;
    }

    public void setHireable(boolean hireable) {
        this.hireable = hireable;
    }
    public boolean getHireable() {
        return hireable;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }
    public String getBio() {
        return bio;
    }

    public void setPublicRepos(int publicRepos) {
        this.publicRepos = publicRepos;
    }
    public int getPublicRepos() {
        return publicRepos;
    }

    public void setPublicGists(int publicGists) {
        this.publicGists = publicGists;
    }
    public int getPublicGists() {
        return publicGists;
    }

    public void setFollowers(int followers) {
        this.followers = followers;
    }
    public int getFollowers() {
        return followers;
    }

    public void setFollowing(int following) {
        this.following = following;
    }
    public int getFollowing() {
        return following;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
    public Date getCreatedAt() {
        return createdAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }
    public Date getUpdatedAt() {
        return updatedAt;
    }


}

