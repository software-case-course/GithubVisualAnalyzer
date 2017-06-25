package cn.donlian.ghanaly.dao;

import cn.donlian.ghanaly.bo.ReposSearchItem;
import cn.donlian.ghanaly.emnu.Language;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by donne on 17-6-6.
 */
@Repository
public class ReposSearchItemDao {

    private final MongoTemplate mongoTemplate;

    @Autowired
    public ReposSearchItemDao(MongoTemplate mongoTemplate) {
        this.mongoTemplate = mongoTemplate;
    }

    public ReposSearchItem save(ReposSearchItem reposSearchItem) {
        mongoTemplate.save(reposSearchItem);
        return reposSearchItem;
    }

    public List<ReposSearchItem> findByLanguage(Language lang) {
        return mongoTemplate.find(
                Query.query(Criteria.where("language").is(lang.toString())),
                ReposSearchItem.class
        );
    }

    public List<ReposSearchItem> findByCreated(String created) {
        return mongoTemplate.find(
                Query.query(Criteria.where("created").is(created)),
                ReposSearchItem.class
        );
    }


    public List<ReposSearchItem> findByLanguageAndCreated(Language lang, String created) {
        return mongoTemplate.find(
                Query.query(Criteria.where("language").is(lang.toString()).and("created").is(created)),
                ReposSearchItem.class
        );
    }

    public List<ReposSearchItem> findByLocation(String location) {
        return mongoTemplate.find(
                Query.query(Criteria.where("location").is(location)),
                ReposSearchItem.class
        );
    }

    public int upsert(ReposSearchItem reposSearchItem) {
        return mongoTemplate.upsert(
                Query.query(Criteria.where("language").is(reposSearchItem.getLanguage())
                        .and("created").is(reposSearchItem.getCreated()).and("pushed").is(reposSearchItem.getPushed())
                        .and("forks").is(reposSearchItem.getForks()).and("stars").is(reposSearchItem.getStars())
                        .and("topic").is(reposSearchItem.getTopic())),
                        Update.update("nodes", reposSearchItem.getNodes()).set("total_count", reposSearchItem.getTotalCount())
                                .set("search_created", reposSearchItem.getSearchCreated()),
                        ReposSearchItem.class)
                .getN();
    }


}
