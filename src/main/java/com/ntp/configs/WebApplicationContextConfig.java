/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.ntp.formatter.ChucVuFormatter;
import com.ntp.formatter.LichTrucFormatter;
import com.ntp.formatter.LoaiThuocFormatter;
import com.ntp.validator.thuocValidator;
import com.ntp.validator.WebAppValidator;
import java.util.HashSet;
import java.util.Set;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.format.FormatterRegistry;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author Phat Nguyen
 */
@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages =  {
    "com.ntp.controllers",
    "com.ntp.service",
    "com.ntp.repository",
    "com.ntp.formatter",
    "com.ntp.validator"
})
public class WebApplicationContextConfig implements WebMvcConfigurer{

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }   
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**")
                .addResourceLocations("/resources/css/");
        registry.addResourceHandler("/images/**")
                .addResourceLocations("/resources/images/");
        registry.addResourceHandler("/js/**")
                .addResourceLocations("/resources/js/");
    }
    
    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addFormatter(new LoaiThuocFormatter());
        registry.addFormatter(new ChucVuFormatter());
        registry.addFormatter(new LichTrucFormatter());
    }
    
    

    @Override
    public Validator getValidator() {
        return validator();
    }
    
    @Bean
    public LocalValidatorFactoryBean validator(){
        LocalValidatorFactoryBean v = new LocalValidatorFactoryBean();
        v.setValidationMessageSource(messageSource());
        
        return v;
    }
    
    @Bean
    public WebAppValidator thuocValidator(){
        Set<Validator> springValidators = new HashSet<>();
        springValidators.add(new thuocValidator());
        
        WebAppValidator v = new WebAppValidator();
        v.setSpringValidators(springValidators);
        return v;
    }
    

    
    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver(){
        InternalResourceViewResolver resolver
                = new InternalResourceViewResolver();
        resolver.setViewClass(JstlView.class);
        resolver.setPrefix("/WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        return resolver;
    }
    

    
    @Bean
    public MessageSource messageSource(){
        ResourceBundleMessageSource source = new ResourceBundleMessageSource();
        source.addBasenames("thuoc", "nhanvien");
        source.setDefaultEncoding("UTF-8");
        return source;
    }
    
    @Bean
    public CommonsMultipartResolver multipartResolver(){
        CommonsMultipartResolver m = new CommonsMultipartResolver();
        m.setDefaultEncoding("UTF-8");
        
        return m;
    }
    
    @Bean
    public Cloudinary cloudinary(){
        Cloudinary c = new Cloudinary(ObjectUtils.asMap(
               "cloud_name", "djfijumdi",
                "api_key", "764917583376422",
                "api_secret", "dRHvIQK9qZnTUbhFXPh3FFjh794",
                "secure", true
        ));
        return c;
    }

}
