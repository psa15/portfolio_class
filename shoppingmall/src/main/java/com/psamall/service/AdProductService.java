package com.psamall.service;

import java.util.List;

import com.psamall.domain.CatetgoryVO;
import com.psamall.domain.ProductVO;
import com.psamall.dto.Criteria;

public interface AdProductService {
	//1차 카테고리 불러오기
	List<CatetgoryVO> firstCateList();	
	
	//2차 카테고리 불러오기
	List<CatetgoryVO> secondCateList(Integer firstCategoryCode);
	
	//상품등록 폼의 정보 저장
	void insertProduct(ProductVO vo);
	
	//상품목록
	List<ProductVO> getProductList(Criteria cri);
	
	//상품 목록 개수 : 페이징 구현 사용
	int getProductTotalCount(Criteria cri);
}
