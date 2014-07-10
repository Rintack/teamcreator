package com.giantrocket.team.data.model;

import java.util.List;

public class Player {
	
	private String name;
	private String lastName;
	private String nick;
	private Role role;
	private boolean isCaptain;
	private List<Hero> favouriteHeroes;
	private String steam;
	private String dotabuff;
	private Country country;
	private String state;
	private String city;
	private String neighbourhood;
	private String pictureUrl;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public boolean isCaptain() {
		return isCaptain;
	}
	public void setCaptain(boolean isCaptain) {
		this.isCaptain = isCaptain;
	}
	public List<Hero> getFavouriteHeroes() {
		return favouriteHeroes;
	}
	public void setFavouriteHeroes(List<Hero> favouriteHeroes) {
		this.favouriteHeroes = favouriteHeroes;
	}
	public String getSteam() {
		return steam;
	}
	public void setSteam(String steam) {
		this.steam = steam;
	}
	public String getDotabuff() {
		return dotabuff;
	}
	public void setDotabuff(String dotabuff) {
		this.dotabuff = dotabuff;
	}
	public Country getCountry() {
		return country;
	}
	public void setCountry(Country country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getNeighbourhood() {
		return neighbourhood;
	}
	public void setNeighbourhood(String neighbourhood) {
		this.neighbourhood = neighbourhood;
	}
	public String getPictureUrl() {
		return pictureUrl;
	}
	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}
	
}
