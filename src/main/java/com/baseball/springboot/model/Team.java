package com.baseball.springboot.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Team {
	
	private int tid;
	private String tname;
	private int year;

	@Builder
	public Team(String tname, int year) {
		this.tname = tname;
		this.year = year;
	}
	
	
}
