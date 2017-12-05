package com.spring.domain;

import java.time.LocalDateTime;

public class Course {
	private String courseID;
	private String courseTitle;
	private String courseDescription;
	private User author;
	private LocalDateTime createDate;
	private Integer price;
	private CourseType courseType;
	private String topic;
	private User confirmedBy;
	private Integer statut;
	private LocalDateTime confirmedDate;
	private Integer views;
	private String courseAvatar;
	private String courseDetail;

	public Course(String courseID, String courseTitle, String courseDescription, User author, LocalDateTime createDate,
			Integer price, CourseType courseType, String topic, User confirmedBy, Integer statut,
			LocalDateTime confirmedDate, Integer views, String courseAvatar, String courseDetail) {
		super();
		this.courseID = courseID;
		this.courseTitle = courseTitle;
		this.courseDescription = courseDescription;
		this.author = author;
		this.createDate = createDate;
		this.price = price;
		this.courseType = courseType;
		this.topic = topic;
		this.confirmedBy = confirmedBy;
		this.statut = statut;
		this.confirmedDate = confirmedDate;
		this.views = views;
		this.courseAvatar = courseAvatar;
		this.courseDetail = courseDetail;
	}

	public Course() {
		super();
	}

	public String getCourseID() {
		return courseID;
	}

	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public String getCourseDescription() {
		return courseDescription;
	}

	public void setCourseDescription(String courseDescription) {
		this.courseDescription = courseDescription;
	}

	public User getAuthor() {
		return author;
	}

	public void setAuthor(User author) {
		this.author = author;
	}

	public LocalDateTime getCreateDate() {
		return createDate;
	}

	public void setCreateDate(LocalDateTime createDate) {
		this.createDate = createDate;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public CourseType getCourseType() {
		return courseType;
	}

	public void setCourseType(CourseType courseType) {
		this.courseType = courseType;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public User getConfirmedBy() {
		return confirmedBy;
	}

	public void setConfirmedBy(User confirmedBy) {
		this.confirmedBy = confirmedBy;
	}

	public Integer getStatut() {
		return statut;
	}

	public void setStatut(Integer statut) {
		this.statut = statut;
	}

	public LocalDateTime getConfirmedDate() {
		return confirmedDate;
	}

	public void setConfirmedDate(LocalDateTime confirmedDate) {
		this.confirmedDate = confirmedDate;
	}

	public Integer getViews() {
		return views;
	}

	public void setViews(Integer views) {
		this.views = views;
	}

	public String getCourseAvatar() {
		return courseAvatar;
	}

	public void setCourseAvatar(String courseAvatar) {
		this.courseAvatar = courseAvatar;
	}

	public String getCourseDetail() {
		return courseDetail;
	}

	public void setCourseDetail(String courseDetail) {
		this.courseDetail = courseDetail;
	}

	@Override
	public String toString() {
		return "Course [courseID=" + courseID + ", courseTitle=" + courseTitle + ", courseDescription="
				+ courseDescription + ", author=" + author + ", createDate=" + createDate + ", price=" + price
				+ ", courseType=" + courseType + ", topic=" + topic + ", confirmedBy=" + confirmedBy + ", statut="
				+ statut + ", confirmedDate=" + confirmedDate + ", views=" + views + ", courseAvatar=" + courseAvatar
				+ ", courseDetail=" + courseDetail + "]";
	}

}
