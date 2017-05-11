package main.java.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

/**
 * Created by donne on 17-5-10.
 */
public class HttpUtil {
    public static String getJsonContent(String urlStr, String method, Map<String, String> propMap) {
        URL url = null;
        HttpURLConnection httpURLConn = null;
        try {
            url = new URL(urlStr);
            httpURLConn = (HttpURLConnection)url.openConnection();

            httpURLConn.setConnectTimeout(3000);
            httpURLConn.setDoInput(true);
            if(propMap != null) {
                for (Map.Entry<String, String> entry : propMap.entrySet()) {
                    httpURLConn.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            httpURLConn.setRequestMethod(method);

            int respCode = httpURLConn.getResponseCode();
            if (respCode == 200) {
                return ConvertStream2Json(httpURLConn.getInputStream());
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            httpURLConn.disconnect();
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
