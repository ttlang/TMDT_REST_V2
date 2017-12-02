package com.spring.domain;

import java.time.LocalDateTime;

public class Comment {

	private String commentID;
	private String lessonID;
	private String userID;
	private String commentContent;
	private LocalDateTime commentDate;
	private Integer commentStatut;

	public Comment(String commentID, String lessonID, String userID, String commentContent, LocalDateTime commentDate,
			Integer commentStatut) {
		super();
		this.commentID = commentID;
		this.lessonID = lessonID;
		this.userID = userID;
		this.commentContent = commentContent;
		this.commentDate = commentDate;
		this.commentStatut = commentStatut;
	}

	public Comment() {
		super();
	}

	public String getCommentID() {
		return commentID;
	}

	public void setCommentID(String commentID) {
		this.commentID = commentID;
	}

	public String getLessonID() {
		return lessonID;
	}

	public void setLessonID(String lessonID) {
		this.lessonID = lessonID;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public LocalDateTime getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(LocalDateTime commentDate) {
		this.commentDate = commentDate;
	}

	public Integer getCommentStatut() {
		return commentStatut;
	}

	public void setCommentStatut(Integer commentStatut) {
		this.commentStatut = commentStatut;
	}

	@Override
	public String toString() {
		return "Comment [commentID=" + commentID + ", lessonID=" + lessonID + ", userID=" + userID + ", commentContent="
				+ commentContent + ", commentDate=" + commentDate + ", commentStatut=" + commentStatut + "]";
	}

}
