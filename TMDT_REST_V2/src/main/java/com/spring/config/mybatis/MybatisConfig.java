package com.spring.config.mybatis;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("com.spring.mapper")
public class MybatisConfig {
	@Bean
	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
		return new MySqlSessionTemplate(sqlSessionFactory);
	}

	static class MySqlSessionTemplate extends SqlSessionTemplate {
		public MySqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
			super(sqlSessionFactory);
		}
	}
}
