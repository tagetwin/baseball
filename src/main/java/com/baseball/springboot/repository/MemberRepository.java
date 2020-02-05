package com.baseball.springboot.repository;

import java.util.List;

import com.baseball.springboot.model.Member;

public interface MemberRepository {

	// 선수명단 
	List<Member> findByTid(int tid);
	
	// 상세보기
	Member findByMid(int mid);
}
