package com.resemblance.service;
// python 빌드 후 나온 추출값과 db에서 뽑아온 data를 FaceResult로 만들어주는 역할을 한다.
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.resemblance.Paging.Criteria;
import com.resemblance.dao.CelebrityDao;
import com.resemblance.vo.Celebrity;
import com.resemblance.vo.FaceResult;

public class CelebrityService {
	@Autowired
	CelebrityDao celebrityDao;
	
	public FaceResult integrateData(ArrayList<String> classifierResult) throws Exception {
		FaceResult faceResult;
		try {
			Celebrity cel = celebrityDao.selectById(
					Integer.parseInt("1")); //classifierResult.get(0)
			System.out.println("디비접속완료");
			faceResult = new FaceResult(
					cel, 
					Integer.parseInt("2"), //classifierResult.get(1)
					Integer.parseInt("3")); //classifierResult.get(2)
		}catch(Exception e) {
			classifierResult.clear();
			throw new Exception();
		}
		classifierResult.clear();
		return faceResult;
		}
		
	
	
	public List<Celebrity> selectAll(){
		return celebrityDao.selectAll();
	}
	
	public List<Celebrity> listPaging(Criteria criteria){
		return celebrityDao.listPaging(criteria);
	}
	
	public Celebrity selectById(int id) {
		return celebrityDao.selectById(id);
	}
	
	public void insert(Celebrity celebrity) {
		celebrityDao.insert(celebrity);
	}
	
	public int count() {
		return celebrityDao.count();
	}
	
	

	
	
}
// java.lang.IndexOutOfBoundsException 예외처리 해야함