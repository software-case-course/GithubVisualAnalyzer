package main.java.util;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by donne on 17-5-17.
 */
public class LocationUtil {

    private static List<String> CN;

    public static List<String> getCN() {
        return CN;
    }

    public static List<String> getProvincesCN() {
        return provincesCN;
    }

    public static List<String> getProvincesEN() {
        return provincesEN;
    }

    private static List<String> provincesCN;
    private static List<String> provincesEN;

    static {
        CN = new ArrayList<>(
                Arrays.asList("china", "PRC", "中国")
        );
        provincesCN = new ArrayList<>(
                Arrays.asList("北京", "广东", "山东", "江苏", "河南",
                        "上海", "河北", "浙江", "香港", "陕西", "湖南", "重庆",
                        "福建", "天津", "云南", "四川", "广西", "安徽", "海南",
                        "江西", "湖北", "山西", "辽宁", "台湾", "黑龙江", "内蒙古",
                        "澳门", "贵州", "甘肃", "青海", "新疆", "西藏", "吉林省", "宁夏")
        );


        provincesEN = new ArrayList<>();
        for(String province : provincesCN) {
            provincesEN.add(getPingYin(province));
        }
    }

    private static String getPingYin(String inputString) {
        HanyuPinyinOutputFormat format = new HanyuPinyinOutputFormat();
        format.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        format.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        format.setVCharType(HanyuPinyinVCharType.WITH_V);
        String output = "";
        if (inputString != null && inputString.length() > 0
                && !"null".equals(inputString)) {
            char[] input = inputString.trim().toCharArray();
            try {
                for (int i = 0; i < input.length; i++) {
                    if (java.lang.Character.toString(input[i]).matches(
                            "[\\u4E00-\\u9FA5]+")) {
                        String[] temp = PinyinHelper.toHanyuPinyinStringArray(
                                input[i], format);
                        output += temp[0];
                    } else
                        output += java.lang.Character.toString(input[i]);
                }
            } catch (BadHanyuPinyinOutputFormatCombination e) {
                e.printStackTrace();
            }
        } else {
            return "*";
        }
        return output;
    }


}
