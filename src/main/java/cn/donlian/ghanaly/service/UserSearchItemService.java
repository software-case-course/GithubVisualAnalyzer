package cn.donlian.ghanaly.service;

import cn.donlian.ghanaly.bo.UserSearchItem;
import cn.donlian.ghanaly.dao.UserSearchItemDao;
import cn.donlian.ghanaly.emnu.Language;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by donne on 17-6-7.
 */
@Service
public class UserSearchItemService {

    private final UserSearchItemDao userSearchItemDao;

    @Autowired
    public UserSearchItemService(UserSearchItemDao userSearchItemDao) {
        this.userSearchItemDao = userSearchItemDao;
    }

    public UserSearchItem save(UserSearchItem userSearchItem) {
        return userSearchItemDao.save(userSearchItem);
    }

    public List<UserSearchItem> findByLang(Language lang) {
        return userSearchItemDao.findByLanguage(lang);
    }

    public List<UserSearchItem> findByCreated(String created) {
        return userSearchItemDao.findByCreated(created);
    }

    public List<UserSearchItem> findByCreatedAndLocation(String created, String location) {
        return userSearchItemDao.findByCreatedAndLocation(created, location);
    }

    public List<UserSearchItem> findByLangAndCreated(Language lang, String created) {
        return userSearchItemDao.findByLanguageAndCreated(lang, created);
    }

    public int upsert(UserSearchItem userSearchItem) {
        return userSearchItemDao.upsert(userSearchItem);
    }
}
