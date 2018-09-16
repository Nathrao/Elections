package com.dreamworth.common;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.dreamworth.util.HibernateUtil;

public class ElectionContainerListner implements ServletContextListener {
	private static final Log logger = LogFactory.getLog(ServletContextListener.class);

	public void contextInitialized(ServletContextEvent servletContextEvent) {

		logger.info("************************STARTING SERVER*****************************");
		logger.info("************************Log4j Settings*****************************");
		System.out.println(logger.isDebugEnabled());
		System.out.println(logger.isTraceEnabled());
		System.out.println(logger.isWarnEnabled());
		System.out.println(logger.isInfoEnabled());
		System.out.println(logger.isErrorEnabled());
		System.out.println(logger.isFatalEnabled());

		ServletContext ctx = servletContextEvent.getServletContext();
		logger.info("************************Database Settings*****************************");
		HibernateUtil.getSessionFactory();

	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		logger.debug("**********************Server stopped************************");
	}
}