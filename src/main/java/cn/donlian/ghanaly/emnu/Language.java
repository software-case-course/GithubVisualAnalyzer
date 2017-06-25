package cn.donlian.ghanaly.emnu;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by donne on 17-5-29.
 */
public enum Language {
    ALL("All"), C("C"), CSHARP("C#"), CPP("C++"),
    CSS("CSS"), HTML("Html"), JAVA("Java"),
    JAVASCRIPT("JavaScript"), OBJECTIVEC("ObjectiveC"),
    PHP("PHP"), PYTHON("Python"), RUBY("Ruby");

    private String name;

    Language(String name) {
        this.name = name;
    }

    private static final Map<String, Language> stringToLang = new HashMap<>();

    static {
        for(Language lang : values()) {
            stringToLang.put(lang.toString(), lang);
        }
    }

    public static Language fromString(String lang) {
        return stringToLang.get(lang);
    }

    @Override
    public String toString() {
        return name;
    }

}
//ALL, ACTIONSCRIPT, CLOJURE, COFFEESCRIPT, GO, HASKELL, LUA, MATLAB, PERL, R, SCALA, SHELL, SWIFT, TEX