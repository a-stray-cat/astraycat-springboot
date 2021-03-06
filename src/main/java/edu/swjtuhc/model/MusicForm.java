package edu.swjtuhc.model;

import java.sql.Time;

public class MusicForm {
	private String username;
	private int userId;
	private int formId;
	private String formName;
	private String musicName;
	private String singer;
	private String album;
	private Time allTime;
	private String cover;
	private int collection;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getFormId() {
		return formId;
	}
	public void setFormId(int formId) {
		this.formId = formId;
	}
	public String getFormName() {
		return formName;
	}
	public void setFormName(String formName) {
		this.formName = formName;
	}
	public String getMusicName() {
		return musicName;
	}
	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public Time getAllTime() {
		return allTime;
	}
	public void setAllTime(Time allTime) {
		this.allTime = allTime;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public int getCollection() {
		return collection;
	}
	public void setCollection(int collection) {
		this.collection = collection;
	}
	@Override
	public String toString() {
		return "MusicForm [username=" + username + ", userId=" + userId + ", formId=" + formId + ", formName="
				+ formName + ", musicName=" + musicName + ", singer=" + singer + ", album=" + album + ", allTime="
				+ allTime + ", cover=" + cover + ", collection=" + collection + "]";
	}
	
}
