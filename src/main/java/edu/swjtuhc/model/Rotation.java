package edu.swjtuhc.model;

public class Rotation {
	private int chartId;
	private String poster;
	private int musicId;
	public int getChartId() {
		return chartId;
	}
	public void setChartId(int chartId) {
		this.chartId = chartId;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public int getMusicId() {
		return musicId;
	}
	public void setMusicId(int musicId) {
		this.musicId = musicId;
	}
	@Override
	public String toString() {
		return "Rotation [chartId=" + chartId + ", poster=" + poster + ", musicId=" + musicId + "]";
	}
	
}
