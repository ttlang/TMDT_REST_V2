package com.spring.domain;

public class TopicStatistics {
	private String topicName;
	private int courseQuantity;
	
	public TopicStatistics() {
		super();
	}

	public TopicStatistics(String topicName, int courseQuantity) {
		super();
		this.topicName = topicName;
		this.courseQuantity = courseQuantity;
	}

	@Override
	public String toString() {
		return "TopicStatistics [topicName=" + topicName + ", courseQuantity=" + courseQuantity + "]";
	}

	public String getTopicName() {
		return topicName;
	}

	public int getCourseQuantity() {
		return courseQuantity;
	}
	
	
}
