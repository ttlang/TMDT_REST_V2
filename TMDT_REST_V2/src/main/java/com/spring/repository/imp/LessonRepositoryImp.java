package com.spring.repository.imp;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.domain.Lesson;
import com.spring.repository.LessonRepository;

@Repository
public class LessonRepositoryImp implements LessonRepository {

	private static final Logger LOGGER = LoggerFactory.getLogger(LessonRepositoryImp.class);
	@Autowired
	private SqlSessionFactory sessionFactory;

	@Override
	public List<Lesson> getLessonBychapterID(String chapterID) {
		SqlSession session = this.sessionFactory.openSession();
		List<Lesson> result = Collections.emptyList();
		try {
			result = session.selectList("com.spring.mapper.LessonMapper.getLessonBychapterID", chapterID);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public Optional<Lesson> getLessonByLessonID(String lessonID) {
		SqlSession session = this.sessionFactory.openSession();
		Lesson lesson = new Lesson();
		try {
			lesson = session.selectOne("com.spring.mapper.LessonMapper.getLessonByLessonID", lessonID);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			session.close();
		}
		return Optional.ofNullable(lesson);
	}

	@Override
	public List<Lesson> getLessonRelateInChapter(String lessonID) {
		List<Lesson> result = Collections.emptyList();
		SqlSession session = this.sessionFactory.openSession();
		try {
		result =session.selectList("com.spring.mapper.LessonMapper.getLessonRelateInChapter", lessonID);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			session.close();
		}
		return result;
	}

}
