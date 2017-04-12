package util;

import constant.GlobalConstant;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

/**
 * Created by donne on 17-3-13.
 */
public class HttpUtil {

    public static String getJsonContent(String urlStr, Map<String, String> propMap) {
        URL url = null;
        try {
            url = new URL(urlStr);
            HttpURLConnection httpURLConn = (HttpURLConnection)url.openConnection();

            httpURLConn.setConnectTimeout(3000);
            httpURLConn.setDoInput(true);
            if(propMap != null) {
                for (Map.Entry<String, String> entry : propMap.entrySet()) {
                    httpURLConn.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            httpURLConn.setRequestProperty("Authorization", "token " + GlobalConstant.ACCESS_TOKEN);
            httpURLConn.setRequestMethod("GET");

            int respCode = httpURLConn.getResponseCode();
            if (respCode == 200) {
                return ConvertStream2Json(httpURLConn.getInputStream());
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }

    private static String ConvertStream2Json(InputStream inputStream) {
        String jsonStr;
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int len = 0;
        //将输入流转移到内存输入流中
        try {
            while ((len = inputStream.read(buffer, 0, buffer.length)) != -1) {
                out.write(buffer, 0, len);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        //内存流转换为字符串
        jsonStr = new String(out.toByteArray());
        return jsonStr;
    }
}
