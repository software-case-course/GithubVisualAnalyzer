package crawler;

import constant.GlobalConstant;
import model.UserData;
import model.UserListData;
import util.GCDataDao;
import util.HttpUtil;
import util.JsonUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by donne on 17-3-12.
 */
public class GithubCrawler {
    private String indexUrl = GlobalConstant.MAIN_URL + "/search/users?q=+language:java&sort=followers";
    private String usrSearchUrl = GlobalConstant.MAIN_URL + "/search/users";

    public GithubCrawler() {
        GCDataDao.createTable();
    }

    public void getUsrSearchData(String q, String sort) {
        String objUrl = usrSearchUrl + "?q=" + q + "&sort=" + sort;
        Map<String, String> propMap = new HashMap<>();
        propMap.put("Authorization", "token " + GlobalConstant.ACCESS_TOKEN);
        String jsonData = HttpUtil.getJsonContent(objUrl, propMap);
        List resultDataList = (List) JsonUtils.json2map(jsonData).get("items");
        List<String> userUrlList = new ArrayList();
        for(int i = 0; i < resultDataList.size(); i++) {
            userUrlList.add((String) ((Map<String, Object>) resultDataList.get(i)).get("url"));
//            UserListData tempUserListData = (UserListData) userList.get(i);
//            GCDataDao.insertUserListData(tempUserListData);
        }
        for (String userUrl : userUrlList) {
            jsonData = HttpUtil.getJsonContent(userUrl, propMap);
            GCDataDao.insertUserData(JsonUtils.json2obj(jsonData, UserData.class));
        }
    }

    public void getUsrData() {
        Map<String, String> propMap = new HashMap<>();
        propMap.put("Authorization", "token " + GlobalConstant.ACCESS_TOKEN);
        String jsonData = HttpUtil.getJsonContent(indexUrl, propMap);
//        List userList = JsonUtils.json2list(jsonData, UserListData.class);
        List userDataList = JsonUtils.json2list(jsonData, Map.class);
        List<String> userUrlList = new ArrayList();
        for(int i = 0; i < userDataList.size(); i++) {
            userUrlList.add((String) ((Map<String, Object>) userDataList.get(i)).get("url"));
//            UserListData tempUserListData = (UserListData) userList.get(i);
//            GCDataDao.insertUserListData(tempUserListData);
        }
        for (String userUrl : userUrlList) {
            jsonData = HttpUtil.getJsonContent(userUrl, propMap);
            GCDataDao.insertUserData(JsonUtils.json2obj(jsonData, UserData.class));
        }
    }

}
