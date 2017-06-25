package cn.donlian.ghanaly.bo.statistic;

import cn.donlian.ghanaly.emnu.Language;

import java.util.List;
import java.util.Map;

/**
 * Created by donne on 17-5-29.
 */

public class Statistic {

    private List<Map<Language, Integer>> staMap;

    private Map<String, String> qualifiers;

    private String type;

    public List<Map<Language, Integer>> getStaMap() {
        return staMap;
    }

    public void setStaMap(List<Map<Language, Integer>> staMap) {
        this.staMap = staMap;
    }

    public Map<String, String> getQualifiers() {
        return qualifiers;
    }

    public void setQualifiers(Map<String, String> qualifiers) {
        this.qualifiers = qualifiers;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
