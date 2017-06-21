package cn.donlian.ghanaly.service;

import cn.donlian.ghanaly.bo.ReposSearchItem;
import cn.donlian.ghanaly.dao.ReposSearchItemDao;
import cn.donlian.ghanaly.emnu.Language;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by donne on 17-6-21.
 */
@Service
public class ReposSearchItemService {

    private final ReposSearchItemDao reposSearchItemDao;


    @Autowired
    public ReposSearchItemService(ReposSearchItemDao reposSearchItemDao) {
        this.reposSearchItemDao = reposSearchItemDao;
    }

    public ReposSearchItem save(ReposSearchItem reposSearchItem) {
        return reposSearchItemDao.save(reposSearchItem);
    }

    public List<ReposSearchItem> findByLang(Language lang) {
        return reposSearchItemDao.findByLanguage(lang);
    }

    public List<ReposSearchItem> findByCreated(String created) {
        return reposSearchItemDao.findByCreated(created);
    }

    public List<ReposSearchItem> findByLangAndCreated(Language lang, String created) {
        return reposSearchItemDao.findByLanguageAndCreated(lang, created);
    }

    public int upsert(ReposSearchItem reposSearchItem) {
        return reposSearchItemDao.upsert(reposSearchItem);
    }

}
