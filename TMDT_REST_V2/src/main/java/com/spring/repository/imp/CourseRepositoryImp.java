package com.spring.repository.imp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.domain.Course;
import com.spring.domain.Topic;
import com.spring.repository.CourseRepository;

@Repository
public class CourseRepositoryImp implements CourseRepository {

	private static final Logger LOGGER = LoggerFactory.getLogger(CourseRepositoryImp.class);
	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	@Override
	public Optional<Course> getCourseByCourseID(String courseID) {
		SqlSession session = sqlSessionFactory.openSession();
		Course result = null;
		try {
			result = session.selectOne("com.spring.mapper.CourseMapper.getCourseByCourseID", courseID);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			session.close();
		}
		return Optional.ofNullable(result);
	}

	@Override
	public Map<String, Object> getCourseWithPaging(int page, int size) {
		Map<String, Object> result = new HashMap<>();
		Map<String, Object> param = new HashMap<>();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			param.put("page", page);
			param.put("size", size);
			List<Topic> listTopicResult = sqlSession.selectList("com.spring.mapper.CourseMapper.getCourseWithPaging",
					param);
			int numberOfPage = (int) param.get("sumPage");

			result.put("listOfResult", listTopicResult);
			result.put("numberOfPage", numberOfPage);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			sqlSession.close();
		}
		return result;
	}

}
