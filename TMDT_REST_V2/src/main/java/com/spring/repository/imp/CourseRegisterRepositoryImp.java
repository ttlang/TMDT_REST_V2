package com.spring.repository.imp;

import java.util.Collections;
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

import com.spring.domain.CourseRegister;
import com.spring.repository.CourseRegisterRepository;

@Repository
public class CourseRegisterRepositoryImp implements CourseRegisterRepository {

	private static final Logger LOGGER = LoggerFactory.getLogger(CourseRegisterRepositoryImp.class);

	@Autowired
	private SqlSessionFactory sessionFactory;

	@Override
	public List<CourseRegister> getListCourseRegisterByCourseID(String CourseID) {
		SqlSession session = this.sessionFactory.openSession();
		List<CourseRegister> result = Collections.emptyList();
		try {
			result = session.selectList("com.spring.mapper.CourseRegisterMapper.getListCourseRegisterByCourseID",
					CourseID);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public String createCourseRegisterByCourse(String courseID, String userID) {
		SqlSession session = this.sessionFactory.openSession();
		Map<String, Object> param = new HashMap<>();
		String result = null;
		param.put("courseID", courseID);
		param.put("userID", userID);
		param.put("result", result);
		try {
			session.insert("com.spring.mapper.CourseRegisterMapper.createCourseRegisterByCourse", param);
			result = String.valueOf(param.get("result"));
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public int deleteRegisterByCourse(int courseRegisterID) {
		SqlSession session = this.sessionFactory.openSession();
		int result = 0;
		try {
			result = session.delete("com.spring.mapper.CourseRegisterMapper.deleteRegisterByCourse", courseRegisterID);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public Optional<CourseRegister> getCourseRegisterByCourseRegisterID(int CourseID) {
		SqlSession session = this.sessionFactory.openSession();
		CourseRegister courseRegister = new CourseRegister();
		try {
			courseRegister = session
					.selectOne("com.spring.mapper.CourseRegisterMapper.getCourseRegisterByCourseRegisterID", CourseID);

		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		}

		return Optional.ofNullable(courseRegister);
	}

}
