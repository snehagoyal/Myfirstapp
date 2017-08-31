package com.sneha.shoppingcartbe.model;


import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages="com.sneha.shoppingcartbe")

	public class ApplicationContext {

		@Bean("dataSource")
		public DataSource geth2DataSource()
		{
			DriverManagerDataSource dataSource=new DriverManagerDataSource();
			dataSource.setDriverClassName("org.h2.Driver");
			dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
			dataSource.setUsername("sneha");
			dataSource.setPassword("s@123");
			return dataSource;
			
		}
		@Autowired
		@Bean
		public  LocalSessionFactoryBean getSessionFactory(DataSource dataSource)
		{
			LocalSessionFactoryBean sessionFactory=new LocalSessionFactoryBean();
			sessionFactory.setDataSource(dataSource);
			sessionFactory.setHibernateProperties(getHibernateProperties());
			sessionFactory.setPackagesToScan(new String[]{"com.sneha.shoppingcartbe.model"});
			return sessionFactory;
			
		}
		public Properties getHibernateProperties()
		{
			Properties properties=new Properties();
			properties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
			properties.setProperty("hibernate.show_sql", "true");
			properties.setProperty("hibernate.hbm2ddl.auto","update");
			return properties;
		}
		@Autowired
		@Bean
		public HibernateTransactionManager geTransactionManager(SessionFactory sessionFactory)
		{
			HibernateTransactionManager transactionManager=new HibernateTransactionManager();
			transactionManager.setSessionFactory(sessionFactory);
			return transactionManager;
		}

	}


