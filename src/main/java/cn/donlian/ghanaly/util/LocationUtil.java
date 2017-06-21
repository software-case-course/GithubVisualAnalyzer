package cn.donlian.ghanaly.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by donne on 17-6-21.
 */
public class LocationUtil {

    private static List<List<String>> locationList;

    static {
        locationList = new ArrayList<>(Arrays.asList(
                new ArrayList<>(Arrays.asList("", "All")),
                new ArrayList<>(Arrays.asList("中国", "China", "RPC", "CN")),
                new ArrayList<>(Arrays.asList("北京", "Beijing", "BJ", "bei+jing")),
                new ArrayList<>(Arrays.asList("上海", "Shanghai", "SH", "shang+hai")),
                new ArrayList<>(Arrays.asList("天津", "Tianjin", "TJ", "tian+jing")),
                new ArrayList<>(Arrays.asList("重庆", "Chongqing", "CQ", "chong+qing")),
                new ArrayList<>(Arrays.asList("香港", "HongKong", "HK")),
                new ArrayList<>(Arrays.asList("澳门", "Macao", "澳門", "Macau")),
                new ArrayList<>(Arrays.asList("广东", "Guangdong", "GD", "guang+dong", "广州", "guangzhou", "深圳", "shenzhen", "珠海", "zhuhai")),
                new ArrayList<>(Arrays.asList("山东", "Shandong", "济南", "jinan", "青岛", "qingdao")),
                new ArrayList<>(Arrays.asList("江苏", "Jiangsu", "JS", "南京", "nanjing", "苏州", "suzhou", "无锡", "wuxi")),
                new ArrayList<>(Arrays.asList("河南", "Henan", "郑州", "zhengzhou")),
                new ArrayList<>(Arrays.asList("河北", "Hebei", "石家庄", "shijiazhuang")),
                new ArrayList<>(Arrays.asList("浙江", "Zhejiang", "ZJ", "杭州", "hangzhou", "宁波", "ningbo")),
                new ArrayList<>(Arrays.asList("陕西", "Shaanxi", "西安", "xi+an", "xian", "xi'an")),
                new ArrayList<>(Arrays.asList("湖南", "Hunan", "长沙", "changsha")),
                new ArrayList<>(Arrays.asList("福建", "Fujian", "厦门", "xiamen", "amoy", "福州", "fuzhou")),
                new ArrayList<>(Arrays.asList("云南", "Yunnan", "昆明", "kunming")),
                new ArrayList<>(Arrays.asList("四川", "Sichuan", "成都", "chengdu")),
                new ArrayList<>(Arrays.asList("广西", "Guangxi", "南宁", "nanning", "桂林", "guilin")),
                new ArrayList<>(Arrays.asList("安徽", "Anhui", "合肥", "hefei")),
                new ArrayList<>(Arrays.asList("海南", "Hainan", "海口", "haikou")),
                new ArrayList<>(Arrays.asList("江西", "Jiangxi", "南昌", "nanchang")),
                new ArrayList<>(Arrays.asList("湖北", "Hubei", "武汉", "wuhan")),
                new ArrayList<>(Arrays.asList("山西", "Shanxi", "太原", "taiyuan")),
                new ArrayList<>(Arrays.asList("辽宁", "Liaoning", "沈阳", "shenyang", "大连", "dalian")),
                new ArrayList<>(Arrays.asList("黑龙江", "Heilongjiang", "哈尔滨", "harbin")),
                new ArrayList<>(Arrays.asList("吉林", "Jilin", "长春", "changchun")),
                new ArrayList<>(Arrays.asList("内蒙", "Inner+mongolia", "huhehot", "hohhot")),
                new ArrayList<>(Arrays.asList("贵州", "Guizhou", "贵阳", "guiyang")),
                new ArrayList<>(Arrays.asList("甘肃", "Gansu", "兰州", "lanzhou")),
                new ArrayList<>(Arrays.asList("青海", "Qinghai", "西宁", "xining")),
                new ArrayList<>(Arrays.asList("新疆", "Xinjiang", "乌鲁木齐", "urumqi", "urumchi")),
                new ArrayList<>(Arrays.asList("西藏", "Xizang", "拉萨", "lhasa")),
                new ArrayList<>(Arrays.asList("宁夏", "Ningxia", "银川", "yinchuang")),
                new ArrayList<>(Arrays.asList("台湾", "Taiwan", "台北", "taibei", "臺灣", "臺北"))
        ));
    }

    public static List<List<String>> getLocationList() {
        return locationList;
    }

}
