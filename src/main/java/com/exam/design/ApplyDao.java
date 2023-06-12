package com.exam.design;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ApplyDao {
	
//	public void mtdInsert(
//			String userName, 
//			String userPhone, 
//			String part, 
//			String motive
//			);
	
	// 데이터 저장
	public void mtdInsert(Map<String, String> map);
	
	// 데이터 목록보기
	public List<ApplyDto> mtdList();
	
	// 데이터 상세보기
	public ApplyDto mtdView(int num);

}
