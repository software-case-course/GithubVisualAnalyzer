package cn.donlian.ghanaly.bo;

import cn.donlian.ghanaly.bo.object.User;
import cn.donlian.ghanaly.emnu.Language;
import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import java.util.List;

/**
 * Created by donne on 17-6-7.
 */
@Document(collection = "user_search_items")
public class UserSearchItem {

    private String repos;

    private String location;

    private Language language = Language.ALL;

    private String created;

    private String followers;

    @Field("searchCreated")
    @JSONField(name = "search_created")
    private String searchCreated;

    @Field("total_count")
    @JSONField(name = "total_count")
    private int totalCount;

    private List<User> nodes;

    public UserSearchItem() {}

    public String getRepos() {
        return repos;
    }

    public void setRepos(String repos) {
        this.repos = repos;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getFollowers() {
        return followers;
    }

    public void setFollowers(String followers) {
        this.followers = followers;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public List<User> getNodes() {
        return nodes;
    }

    public void setNodes(List<User> nodes) {
        this.nodes = nodes;
    }

    public String getSearchCreated() {
        return searchCreated;
    }

    public void setSearchCreated(String searchCreated) {
        this.searchCreated = searchCreated;
    }
}
