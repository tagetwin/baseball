package com.baseball.springboot.ViewModel;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MemberListVM {

	private int mid;
	private String mname;
	private String tname;
	private String position;
	private int tall;
}
