package br.edu.infnet.appservico;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import br.edu.infnet.appservico.AppConfig;

public class AppInit extends AbstractAnnotationConfigDispatcherServletInitializer
{

protected Class<?>[] getRootConfigClasses() {
	return	 null;
}

protected Class<?>[] getServletConfigClasses() {
	return new Class[] {AppConfig.class};
}

protected String[] getServletMappings() {
	return new String[] {"/"};
}

}
