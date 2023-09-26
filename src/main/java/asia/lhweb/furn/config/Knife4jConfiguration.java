// package asia.lhweb.furn.config;
//
// import org.springframework.context.annotation.Bean;
// import org.springframework.context.annotation.Configuration;
// import org.springframework.stereotype.Component;
// import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
// import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
// import springfox.documentation.builders.ApiInfoBuilder;
// import springfox.documentation.builders.PathSelectors;
// import springfox.documentation.builders.RequestHandlerSelectors;
// import springfox.documentation.service.ApiInfo;
// import springfox.documentation.spi.DocumentationType;
// import springfox.documentation.spring.web.plugins.Docket;
// import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;
//
//
// @Configuration
// // @EnableSwagger2WebMvc
// @EnableSwagger2WebMvc
// @Component
// public class Knife4jConfiguration {
//
//     @Bean
//     public Docket docket() {
//         ApiInfo apiInfo = new ApiInfoBuilder()
//                 .title("项目接口文档")
//                 .version("2.0")
//                 .description("项目接口文档")
//                 .build();
//         Docket docket = new Docket(DocumentationType.SWAGGER_2)
//                 .apiInfo(apiInfo)
//                 .select()
//                 .apis(RequestHandlerSelectors.basePackage("asia.lhweb.furn.controller"))
//                 .paths(PathSelectors.any())
//                 .build();
//         return docket;
//     }
//
//     /**
//      * 设置静态资源映射
//      *
//      * @param registry
//      */
//     protected void addResourceHandlers(ResourceHandlerRegistry registry) {
//         registry.addResourceHandler("/doc.html").addResourceLocations("classpath:/META-INF/resources/");
//         registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
//     }
//
//     class MvcConfigurerAdapter extends WebMvcConfigurationSupport {
//
//         @Override
//         protected void addResourceHandlers(ResourceHandlerRegistry registry) {
//             registry.addResourceHandler("doc.html").addResourceLocations("classpath:/META-INF/resources/");
//             registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
//             super.addResourceHandlers(registry);
//         }
//     }
// }