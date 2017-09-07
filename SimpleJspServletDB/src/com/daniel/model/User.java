package com.daniel.model;

import java.util.Date;

public class User {

	private int id;
	private String name;
	private String gender;
	private String depart;
	private int score;
	private int rank;
	//private String email;
	public int getId() {
		return id;
	}
	public void setId(int userid) {
		this.id = userid;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name
				+ ", gender=" + gender + ", depart=" + depart + ", score="
				+ score +", rank=" + rank + "]";
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
