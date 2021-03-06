package com.spring.repository;

import java.util.List;
import java.util.Optional;

import com.spring.domain.Comment;

public interface CommentRepository {
	public List<Comment> getCommentByLessonID(String lessonID);
	
	public Optional<Comment>getCommentBycommentID(int commentID);
	
	public int deleteCommentByCommentID(int commentID);
	
	public int updateCommentContent(int commentID,String commentContent);
	
	
	public boolean canEditComment(int commentID,String userID);
	
}
