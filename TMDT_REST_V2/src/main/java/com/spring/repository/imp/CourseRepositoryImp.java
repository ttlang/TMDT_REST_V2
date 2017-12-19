package com.spring.repository.imp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.domain.Course;
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
			List<Course> listCourseResult = sqlSession.selectList("com.spring.mapper.CourseMapper.getCourseWithPaging",
					param);
			int numberOfPage = (int) param.get("sumPage");

			result.put("listOfResult", listCourseResult);
			result.put("numberOfPage", numberOfPage);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			sqlSession.close();
		}
		return result;
	}

	@Override
	public Map<String, Object> getCourseByTopicIDWithPaging(int page, int size, String TopicID) {
		Map<String, Object> result = new HashMap<>();
		Map<String, Object> param = new HashMap<>();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			param.put("page", page);
			param.put("size", size);
			param.put("topicID", TopicID);
			List<Course> listTopicResult = sqlSession
					.selectList("com.spring.mapper.CourseMapper.getCourseByTopicIDWithPaging", param);
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

	@Override
	public int updateCourseStatus(String courseID, int newStatus) {
		SqlSession session = this.sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<>();
		param.put("newStatus", newStatus);
		param.put("courseID", courseID);
		int numberOfrecordEffect = 0;
		try {
			numberOfrecordEffect = session.update("com.spring.mapper.CourseMapper.updateCourseStatus", param);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			session.close();
		}

		return numberOfrecordEffect;
	}

	@Override
	public String createCourse(String courseTitle, String courseDescription, String author, Integer price,
			String courseTypeID, String topicID, String courseAvatar, String courseDetail) {
		SqlSession session = this.sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<>();
		param.put("courseTitle", courseTitle);
		param.put("courseDescription", courseDescription);
		param.put("author", author);
		param.put("price", price);
		param.put("courseTypeID", courseTypeID);
		param.put("topicID", topicID);
		param.put("courseAvatar", courseAvatar);
		param.put("courseDetail", courseDetail);
		String courseID = new String();
		try {
			List<Map<String, Object>> resultOfInsert = session.selectList("com.spring.mapper.CourseMapper.createCourse",
					param);
			if (resultOfInsert.isEmpty()) {
				return courseID;
			} else {
				for (Map<String, Object> map : resultOfInsert) {
					if (!map.isEmpty() && map.containsKey("courseID")) {
						courseID = (String) map.get("courseID");
					}
				}
			}
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		} finally {
			session.close();
		}
		return courseID;
	}

	@Override
	public int updateCourse(String courseID, String courseTitle, String courseDescription, Integer price,
			String courseTypeID, String topicID, String courseAvatar, String courseDetail, Integer newStatus) {
		Map<String, Object> param = new HashMap<>();
		Map<String, String> columName = new HashMap<>();
		int resultUpdate = 0;
		columName.put("courseTitle", "tieu_de");
		columName.put("courseDescription", "mo_ta");
		columName.put("price", "don_gia");
		columName.put("courseTypeID", "ma_loai_khoa_hoc");
		columName.put("topicID", "ma_chu_de");
		columName.put("courseAvatar", "anh_dai_dien");
		columName.put("courseDetail", "chi_tiet_khoa_hoc");
		columName.put("newStatus", "trang_thai");

		param.put("courseTitle", courseTitle);
		param.put("courseDescription", courseDescription);
		param.put("price", price);
		param.put("courseTypeID", courseTypeID);
		param.put("topicID", topicID);
		param.put("courseAvatar", courseAvatar);
		param.put("courseDetail", courseDetail);
		param.put("newStatus", newStatus);
		SqlSession session = this.sqlSessionFactory.openSession(ExecutorType.BATCH, false);
		try {
			param.entrySet().removeIf(e -> e.getValue() == null);

			for (Map.Entry<String, Object> p2 : param.entrySet()) {

				Map<String, Object> p = new HashMap<>();
				p.put("courseID", courseID);
				p.put("courseProperties", columName.get(p2.getKey()));
				p.put("coursePropertiesValue", p2.getValue());
				resultUpdate += session.update("com.spring.mapper.CourseMapper.updateCourse", p);
			}
		} catch (Exception e) {
			session.rollback();
			LOGGER.error(e.getMessage());
		}
		if (resultUpdate == (param.size() * -2147482646)) {
			try {
				session.commit();
				return param.size();

			} catch (Exception e) {
				LOGGER.error(e.getMessage());
			}
		}
		session.rollback();
		return 0;

	}

	@Override
	public Map<String, Object> getCourseByAuthorWithPaging(int page, int size, String authorID) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<>();
		Map<String, Object> result = new HashMap<>();
		List<Course> listCourses = new ArrayList<>();
		try {
			param.put("page", page);
			param.put("size", size);
			param.put("authorID", authorID);
			listCourses = sqlSession.selectList("com.spring.mapper.CourseMapper.getCourseByAuthorWithPaging", param);
			int sumPage = (int) param.get("sumPage");
			result.put("listOfResult", listCourses);
			result.put("numberOfPage", sumPage);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		}finally {
			sqlSession.close();
		}
		return result;
	}

}
