package com.baseball.springboot.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Member {

	private int mid;
	private String mname;
	private int teamId;
	private String position;
	private int tall;

	@Builder
	public Member(String mname, String position, int tall) {
		this.mname = mname;
		this.position = position;
		this.tall = tall;
	}
	
	
}
