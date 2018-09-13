package com.dreamworth.common;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ElectionContainerListner implements ServletContextListener {
	private static final Log logger = LogFactory.getLog(ServletContextListener.class);
	
	public void contextInitialized(ServletContextEvent servletContextEvent) {
		System.out.println(logger.isDebugEnabled());
		System.out.println(logger.isTraceEnabled());
		System.out.println(logger.isWarnEnabled());
		System.out.println(logger.isInfoEnabled());
		System.out.println(logger.isErrorEnabled());
		System.out.println(logger.isFatalEnabled());
		logger.info("************************STARTING SERVER*****************************");
		ServletContext ctx = servletContextEvent.getServletContext();
		
	}

	@Override
		public void contextDestroyed(ServletContextEvent arg0) {
		logger.debug("**********************Server stopped************************");	
		}
}