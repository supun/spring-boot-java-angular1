package ras.config;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.core.env.Environment;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import ras.util.WebConstants;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;

@Configuration
@EnableWebMvc
@ComponentScan({ "ras" })
public class WebMvcConfig extends WebMvcConfigurerAdapter
{
	private static final Logger LOGGER = LoggerFactory.getLogger( WebMvcConfig.class );
	@Autowired
	Environment env;

	@Autowired
	@Qualifier("jstlViewResolver")
	private ViewResolver jstlViewResolver;

	@Override
	public void addResourceHandlers( ResourceHandlerRegistry registry )
	{

		String staticHtmlPath = env.getProperty( WebConstants.STATIC_WEB_HTML_RESOURCES );
		String staticCssPath = env.getProperty( WebConstants.STATIC_WEB_CSS_JS_RESOURCES );

		if ( staticHtmlPath != null )
		{
			registry.addResourceHandler( "/**" ).addResourceLocations( WebConstants.FILE_PROTOCAL + staticHtmlPath ).addResourceLocations( WebConstants.FILE_PROTOCAL + staticCssPath );
		}

		LOGGER.info( "Resource locations are successfully configured." );
	}

	@Bean
	@DependsOn({ "jstlViewResolver" })
	public ViewResolver viewResolver()
	{
		return jstlViewResolver;
	}

	@Bean(name = "jstlViewResolver")
	public ViewResolver jstlViewResolver()
	{
		UrlBasedViewResolver resolver = new UrlBasedViewResolver();
		resolver.setPrefix( "" ); // NOTE: no preffix here
		resolver.setViewClass( JstlView.class );
		resolver.setSuffix( ".html" ); // NOTE: no suffix here
		resolver.setCache( Boolean.FALSE );
		return resolver;
	}

	@Override
	public void addViewControllers( ViewControllerRegistry registry )
	{
		registry.addViewController( "/" ).setViewName( "forward:/index.html" );
		registry.addViewController( "/rootTemplate" ).setViewName( "forward:/views/root.html" );
		registry.addViewController( "/riskMasterDirectiveTemplate" ).setViewName( "forward:/views/riskMasterViews/riskMasterDirectiveTemplate.html" );
		registry.addViewController( "/riskCategoryDropDownDirectiveTemplate" ).setViewName( "forward:/views/riskMasterViews/riskCategoryDropDownDirectiveTemplate.html" );
		registry.addViewController( "/riskLocationDropDownDirectiveTemplate" ).setViewName( "forward:/views/riskMasterViews/riskLocationDropDownDirectiveTemplate.html" );
		registry.addViewController( "/riskPersonDropDownDirectiveTemplate" ).setViewName( "forward:/views/riskMasterViews/riskPersonDropDownDirectiveTemplate.html" );
		registry.addViewController( "/riskHodDropDownDirectiveTemplate" ).setViewName( "forward:/views/riskMasterViews/riskHodDropDownDirectiveTemplate.html" );
		registry.addViewController( "/intialRiskDirectiveTemplate" ).setViewName( "forward:/views/intialRiskDirectiveTemplate.html" );
		registry.addViewController( "/riskControlDirectiveTemplate" ).setViewName( "forward:/views/riskControlDirectiveTemplate.html" );
		registry.addViewController( "/fileUploadDirectiveTemplate" ).setViewName( "forward:/views/fileUploadDirectiveTemplate.html" );
		registry.addViewController( "/riskApproveDirectiveTemplate" ).setViewName( "forward:/views/riskApproveDirectiveTemplate.html" );
		registry.addViewController( "/jobCompletionDirectiveTemplate" ).setViewName( "forward:/views/jobCompletionDirectiveTemplate.html" );
	}

	@Override
	public void configureMessageConverters( List<HttpMessageConverter<?>> converters )
	{
		final MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();
		final ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.setSerializationInclusion( JsonInclude.Include.USE_DEFAULTS );
		converter.setObjectMapper( objectMapper );
		converters.add( converter );
		super.configureMessageConverters( converters );
	}

}
