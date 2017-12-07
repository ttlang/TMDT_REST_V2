package com.spring.domain;

public class Topic {
	private String topicID;
	private String topicName;
	private	String topicDescription;
	private Integer topicStatut;
	public Topic(String topicID, String topicName, String topicDescription, Integer topicStatut) {
		super();
		this.topicID = topicID;
		this.topicName = topicName;
		this.topicDescription = topicDescription;
		this.topicStatut = topicStatut;
	}
	public Topic() {
		super();
	}
	
	
	public String getTopicID() {
		return topicID;
	}
	public void setTopicID(String topicID) {
		this.topicID = topicID;
	}
	public String getTopicName() {
		return topicName;
	}
	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}
	public String getTopicDescription() {
		return topicDescription;
	}
	public void setTopicDescription(String topicDescription) {
		this.topicDescription = topicDescription;
	}
	public Integer getTopicStatut() {
		return topicStatut;
	}
	public void setTopicStatut(Integer topicStatut) {
		this.topicStatut = topicStatut;
	}
	@Override
	public String toString() {
		return "Topic [topicID=" + topicID + ", topicName=" + topicName + ", topicDescription=" + topicDescription
				+ ", topicStatut=" + topicStatut + "]";
	}
	
	
	
}
