package com.baseball.springboot.repository;

import java.util.List;

import com.baseball.springboot.model.Team;

public interface TeamRepository {

	// 전체보기
	List<Team> findAll();
}
