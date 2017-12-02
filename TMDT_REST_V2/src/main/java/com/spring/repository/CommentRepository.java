package com.spring.repository;

import java.util.List;

import com.spring.domain.Comment;

public interface CommentRepository {
	public List<Comment>getCommentByLessonID(String lessonID);

}
