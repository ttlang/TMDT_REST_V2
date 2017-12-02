package com.spring.repository.imp;

import java.util.Collections;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.domain.Comment;
import com.spring.repository.CommentRepository;
@Repository
public class CommentRepositoryImp implements CommentRepository {

	private static final Logger LOGGER = LoggerFactory.getLogger(CommentRepositoryImp.class);
	@Autowired
	private SqlSessionFactory sessionFactory;

	@Override
	public List<Comment> getCommentByLessonID(String lessonID) {
		List<Comment> result = Collections.emptyList();
		SqlSession session = sessionFactory.openSession();
		try {
			result = session.selectList("com.spring.mapper.CommentMapper.getCommentByLessonID", lessonID);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		}
		return result;
	}

}
