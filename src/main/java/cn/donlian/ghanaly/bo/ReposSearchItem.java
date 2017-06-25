package cn.donlian.ghanaly.bo;

import cn.donlian.ghanaly.bo.object.Repository;
import cn.donlian.ghanaly.emnu.Language;
import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import java.io.Serializable;
import java.util.List;

/**
 * Created by donne on 17-6-6.
 */
@Document(collection = "repos_search_items")
public class ReposSearchItem implements Serializable {

    private static final long serialVersionUID = -735089320261076784L;

    private Language language = Language.ALL;

    private String created;

    private String pushed;

    private String forks;

    private String stars;

    private String topic;

    @Field("searchCreated")
    @JSONField(name = "search_created")
    private String searchCreated;

    @Field("total_count")
    @JSONField(name = "total_count")
    private int totalCount;

    private List<Repository> nodes;

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

    public String getPushed() {
        return pushed;
    }

    public void setPushed(String pushed) {
        this.pushed = pushed;
    }

    public String getForks() {
        return forks;
    }

    public void setForks(String forks) {
        this.forks = forks;
    }

    public String getStars() {
        return stars;
    }

    public void setStars(String stars) {
        this.stars = stars;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getSearchCreated() {
        return searchCreated;
    }

    public void setSearchCreated(String searchCreated) {
        this.searchCreated = searchCreated;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public List<Repository> getNodes() {
        return nodes;
    }

    public void setNodes(List<Repository> nodes) {
        this.nodes = nodes;
    }
}
