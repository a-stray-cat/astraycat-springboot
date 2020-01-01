package edu.swjtuhc.model;

import java.sql.Time;

public class Video {
	private int userId;
	private int videoId;
	private String videoName;
	private Time uploadTime;
	private String label;
	private String storagePath;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getVideoId() {
		return videoId;
	}
	public void setVideoId(int videoId) {
		this.videoId = videoId;
	}
	public String getVideoName() {
		return videoName;
	}
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	public Time getUploadTime() {
		return uploadTime;
	}
	public void setUploadTime(Time uploadTime) {
		this.uploadTime = uploadTime;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getStoragePath() {
		return storagePath;
	}
	public void setStoragePath(String storagePath) {
		this.storagePath = storagePath;
	}
	@Override
	public String toString() {
		return "Video [userId=" + userId + ", videoId=" + videoId + ", videoName=" + videoName + ", uploadTime="
				+ uploadTime + ", label=" + label + ", storagePath=" + storagePath + "]";
	}
	
	
}
