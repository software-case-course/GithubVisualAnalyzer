package cn.donlian.ghanaly.service;

import cn.donlian.ghanaly.bo.Pager;
import cn.donlian.ghanaly.bo.object.User;
import cn.donlian.ghanaly.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

/**
 * Created by donne on 17-5-24.
 */

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public User save(User user){
        user = userDao.save(user);
        return user;
    }

    public Set<String> getCollectionNames() {
        return userDao.getCollectionNames();
    }

    public Pager selectPage(User user, Pager pager){
        return userDao.selectPage(user, pager);
    }
}
