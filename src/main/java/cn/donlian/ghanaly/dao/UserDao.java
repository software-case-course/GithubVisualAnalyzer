package cn.donlian.ghanaly.dao;

import cn.donlian.ghanaly.bo.Pager;
import cn.donlian.ghanaly.bo.UserBo;
import cn.donlian.ghanaly.bo.object.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

/**
 * UserDao
 * Created by donne on 17-5-24.
 */

@Repository
public class UserDao {

    /**
     * which can manipulate the mongodb class
     */
    @Autowired
    private MongoTemplate mongoTemplate;

    /**
     * save users information
     * @param
     * @return UserBo
     */
    public User save(User user) {
        mongoTemplate.save(user);
        return user;
    }

    /**
     * get all collection names
     * @return
     */
    public Set<String> getCollectionNames() {
        Set<String> collections = mongoTemplate.getCollectionNames();
        return collections;
    }

    /**
     * pages query
     * @param userBo
     * @param pager
     * @return
     */
    public Pager selectPage(User user, Pager pager){
        Query query = new Query();
        query.skip((pager.getPageNum()-1)*pager.getPageSize());
        query.limit(pager.getPageSize());
            /*Criteria criteria = new Criteria();
            query.addCriteria(criteria);*/
        long total = mongoTemplate.count(query, User.class);
        List<User> users = mongoTemplate.find(query, User.class);
        pager.setResult(users);
        pager.setTotal(total);
        return pager;
    }


}
