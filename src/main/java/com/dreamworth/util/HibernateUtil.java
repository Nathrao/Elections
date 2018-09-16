package com.dreamworth.util;

import java.io.IOException;
import java.io.Serializable;
import java.util.Properties;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.dreamworth.controller.UserController;

public final class HibernateUtil implements Serializable, Cloneable {
	private static final Log logger = LogFactory.getLog(HibernateUtil.class);
	private static final long serialVersionUID = -3821986191867552999L;
	private HibernateUtil() {
	}
	private static volatile SessionFactory factory;

	public static SessionFactory getSessionFactory() {
		logger.trace("HibernateUtil.getSessionFactory() entry");
		if (factory == null) {
			synchronized (SessionFactory.class) {
				if (factory == null) {
					logger.debug("factory object is not intilized yet..");
					Configuration configuration = new Configuration();
					Properties connectionProperty = new Properties();
					// load properties file
					try {
						logger.debug("load hibernate.properties");
						connectionProperty.load(Thread.currentThread().getContextClassLoader()
								.getResourceAsStream("hibernate.properties"));

						configuration.setProperties(connectionProperty);
						factory = configuration.buildSessionFactory();
						logger.debug("session factory objct created");
						// configuration.configure("com/dreamworth/config/hibernate.cfg.xml");
						// factory=configuration.buildSessionFactory();
					} catch (Exception e) {
						logger.error("exeception occured :"+e);
					}
					finally {
						logger.debug("finally executed");
					}
				}

			}

		}
		logger.trace("HibernateUtil.getSessionFactory() exit");
		return factory;
	}

	protected Object readResolve() {
		return factory;
	}

	protected Object clone() throws CloneNotSupportedException {
		throw new CloneNotSupportedException();
	}

}
