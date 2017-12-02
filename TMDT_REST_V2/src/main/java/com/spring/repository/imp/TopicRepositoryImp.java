package com.spring.repository.imp;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.repository.TopicRepository;

@Repository
public class TopicRepositoryImp implements TopicRepository{
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	private static final Logger LOGGER = LoggerFactory.getLogger(TopicRepositoryImp.class);
	
	@Override
	public int createTopic(String topicTitle, String topicDescription, int topicStatus) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<>();
		int result = 0;
		param.put("topicTitle", topicTitle);
		param.put("topicDescription", topicDescription);
		param.put("topicStatus", topicStatus);
		param.put("result", result);
		try {
			sqlSession.insert("com.spring.mapper.TopicMapper.createTopic", param);
			result = (int) param.get("result");
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		}finally {
			sqlSession.close();
		}
		return result;
	}

}
