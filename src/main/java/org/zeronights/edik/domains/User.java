package org.zeronights.edik.domains;

public class User {
	
	private String name;
	private String pass;
	private Integer weight;
	
	public User() {

	}

	public User(String name, String pass, Integer weight) {
		this.name=name;
		this.pass=pass;
		this.weight=weight;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}


	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", pass=" + pass + ", weight=" + weight + "]";
	}
	

}
