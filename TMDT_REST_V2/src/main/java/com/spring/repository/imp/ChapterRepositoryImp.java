package com.spring.repository.imp;

import java.util.Collections;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.domain.Chapter;
import com.spring.repository.ChapterRepository;

public class ChapterRepositoryImp implements ChapterRepository {

	private static final Logger LOGGER = LoggerFactory.getLogger(ChapterRepositoryImp.class);
	@Autowired
	private SqlSessionFactory sessionFactory;

	@Override
	public List<Chapter> getChapterByCourseID(String courseID) {
		SqlSession session = this.sessionFactory.openSession();
		List<Chapter> result = Collections.emptyList();
		try {
			result = session.selectList("com.spring.mapper.ChapterMapper.getChapterByCourseID", courseID);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			session.close();
		}

		return result;
	}
}
