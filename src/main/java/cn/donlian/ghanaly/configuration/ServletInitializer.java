package cn.donlian.ghanaly.configuration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.filter.CharacterEncodingFilter;

import javax.servlet.ServletException;

/**
 * Created by donne on 17-5-31.
 */

public class ServletInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(javax.servlet.ServletContext servletContext) throws ServletException {
        javax.servlet.FilterRegistration.Dynamic filter = servletContext.addFilter("encodingFilter",
                new CharacterEncodingFilter("utf-8", true));
        filter.addMappingForServletNames(null, false, "/*");

    }


}
