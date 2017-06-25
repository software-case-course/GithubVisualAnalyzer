package cn.donlian.ghanaly.dao;

import cn.donlian.ghanaly.bo.UserSearchItem;
import cn.donlian.ghanaly.emnu.Language;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

/**
 * Created by donne on 17-6-7.
 */
@Repository
public class UserSearchItemDao {

    private final MongoTemplate mongoTemplate;

    @Autowired
    public UserSearchItemDao(MongoTemplate mongoTemplate) {
        this.mongoTemplate = mongoTemplate;
    }

    public UserSearchItem save(UserSearchItem userSearchItem) {
        mongoTemplate.save(userSearchItem);
        return userSearchItem;
    }

    public Set<String> getCollectionNames() {
        Set<String> collection = mongoTemplate.getCollectionNames();
        return collection;
    }

    public List<UserSearchItem> findByLanguage(Language lang) {
        return mongoTemplate.find(
                Query.query(Criteria.where("language").is(lang.toString())),
                UserSearchItem.class
        );
    }

    public List<UserSearchItem> findByCreated(String created) {
        return mongoTemplate.find(
                Query.query(Criteria.where("created").is(created)),
                UserSearchItem.class
        );
    }

    public List<UserSearchItem> findByCreatedAndLocation(String created, String location) {
        return mongoTemplate.find(
                Query.query(Criteria.where("created").is(created).and("location").is(location)),
                UserSearchItem.class
        );
    }

    public List<UserSearchItem> findByLanguageAndCreated(Language lang, String created) {
        return mongoTemplate.find(
                Query.query(Criteria.where("created").is(created).and("language").is(lang.toString())),
                UserSearchItem.class
        );
    }

    public int upsert(UserSearchItem userSearchItem) {
        return mongoTemplate.upsert(Query.query(Criteria.where("repos").is(userSearchItem.getRepos())
                        .and("location").is(userSearchItem.getLocation())
                        .and("language").is(userSearchItem.getLanguage()).and("created").is(userSearchItem.getCreated())
                        .and("followers").is(userSearchItem.getFollowers())),
                Update.update("nodes", userSearchItem.getNodes()).set("total_count", userSearchItem.getTotalCount())
                        .set("search_created", userSearchItem.getSearchCreated()),
                UserSearchItem.class).getN();
    }


}
