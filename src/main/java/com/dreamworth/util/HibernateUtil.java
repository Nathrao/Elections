package com.dreamworth.util;

import java.io.IOException;
import java.io.Serializable;
import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public final class HibernateUtil implements Serializable,Cloneable {

	private static final long serialVersionUID = -3821986191867552999L;

	private HibernateUtil(){}
	
	private static volatile SessionFactory factory;
	
	public static SessionFactory getSessionFactory()
	{
		
		if(factory==null)
		{
			synchronized (SessionFactory.class)
			{
				if(factory==null)
				{
					Configuration configuration = new Configuration();
					Properties connectionProperty = new Properties();
					//load properties file
					try {
					connectionProperty.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("hibernate.properties"));
					configuration.setProperties(connectionProperty);
					// build session factory
					factory = configuration.buildSessionFactory();
					// get session
					
//					configuration.configure("com/dreamworth/config/hibernate.cfg.xml");
//					factory=configuration.buildSessionFactory();
//					
					} catch (IOException e) {
						e.printStackTrace();
					}
					
				}
				
			}
			
		}
		
		return factory;
	}
	
	protected Object readResolve()
	{
		return factory;
	}
	
	protected Object clone()throws CloneNotSupportedException{
		throw new CloneNotSupportedException();
	}

}
