package edu.swjtuhc.model;

public class Music {
	private int musicId;
	private String musicName;
	private String singer;
	private int play;
	private String label;
	public int getMusicId() {
		return musicId;
	}
	public void setMusicId(int musicId) {
		this.musicId = musicId;
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
	public int getPlay() {
		return play;
	}
	public void setPlay(int play) {
		this.play = play;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	@Override
	public String toString() {
		return "Music [musicId=" + musicId + ", musicName=" + musicName + ", singer=" + singer + ", play=" + play
				+ ", label=" + label + "]";
	}
	
}
