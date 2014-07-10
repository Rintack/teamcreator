package com.giantrocket.team.data.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Team {
	private String name;
	private String tag;
	private Date creationDate;
	private String mail;
	private String facebook;
	private String twitter;
	private String web;
	private String imageUrl;
	private List<Player> players;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getTwitter() {
		return twitter;
	}
	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	public String getWeb() {
		return web;
	}
	public void setWeb(String web) {
		this.web = web;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public List<Player> getPlayers() {
		if(players==null){
			players=new ArrayList<Player>();
		}
		return players;
	}
	public void setPlayers(List<Player> players) {
		this.players = players;
	}
}
