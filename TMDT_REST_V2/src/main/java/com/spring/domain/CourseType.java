package com.spring.domain;

public class CourseType {
	private String courseTypeID;
	private String courseTitle;
	private String courseDescription;

	public CourseType(String courseTypeID, String courseTitle, String courseDescription) {
		super();
		this.courseTypeID = courseTypeID;
		this.courseTitle = courseTitle;
		this.courseDescription = courseDescription;
	}

	public CourseType() {
		super();
	}

	public String getCourseTypeID() {
		return courseTypeID;
	}

	public void setCourseTypeID(String courseTypeID) {
		this.courseTypeID = courseTypeID;
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

	@Override
	public String toString() {
		return "CourseType [courseTypeID=" + courseTypeID + ", courseTitle=" + courseTitle + ", courseDescription="
				+ courseDescription + "]";
	}

}
