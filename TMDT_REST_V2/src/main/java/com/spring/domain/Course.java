package com.spring.domain;

import java.time.LocalDateTime;

import com.spring.domain.custom.UserCustom;

public class Course {
	private String courseID;
	private String courseTitle;
	private String courseDescription;
	private UserCustom author;
	private LocalDateTime createDate;
	private Integer price;
	private CourseType courseType;
	private Topic topic;
	private UserCustom confirmedBy;
	private Integer statut;
	private LocalDateTime confirmedDate;
	private Integer views;
	private String courseAvatar;
	private String courseDetail;
	public Course(String courseID, String courseTitle, String courseDescription, UserCustom author,
			LocalDateTime createDate, Integer price, CourseType courseType, Topic topic, UserCustom confirmedBy,
			Integer statut, LocalDateTime confirmedDate, Integer views, String courseAvatar, String courseDetail) {
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
	public UserCustom getAuthor() {
		return author;
	}
	public void setAuthor(UserCustom author) {
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
	public Topic getTopic() {
		return topic;
	}
	public void setTopic(Topic topic) {
		this.topic = topic;
	}
	public UserCustom getConfirmedBy() {
		return confirmedBy;
	}
	public void setConfirmedBy(UserCustom confirmedBy) {
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
