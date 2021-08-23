package com.blisgo.client.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
@MapperScan(basePackages="com.blisgo.client.mapper")
public class MyBatisConfig {
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource datasource) throws Exception{
	 SqlSessionFactoryBean sqlSessionFactory=new SqlSessionFactoryBean();
	 sqlSessionFactory.setDataSource(datasource);
	 sqlSessionFactory.setTypeAliasesPackage("com.blisgo.client.dto");
	 PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
	 sqlSessionFactory.setMapperLocations(resolver.getResources("mapper/*.xml"));
	 return sqlSessionFactory.getObject();
	}
	
	@Bean
	public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
		return new SqlSessionTemplate(sqlSessionFactory);
	}

}