package com.example.demo.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;

@Configuration
@MapperScan(basePackages="com.example.demo.mapper")
public class MyBatisConfig {
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource datasource) throws Exception{
	 SqlSessionFactoryBean sqlSessionFactory=new SqlSessionFactoryBean();
	 sqlSessionFactory.setDataSource(datasource);
	 sqlSessionFactory.setTypeAliasesPackage("com.example.demo.dto");
	 PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
	 sqlSessionFactory.setMapperLocations(resolver.getResources("mapper/*.xml"));
	 return sqlSessionFactory.getObject();
	}
	
	@Bean
	public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
		return new SqlSessionTemplate(sqlSessionFactory);
	}

}
