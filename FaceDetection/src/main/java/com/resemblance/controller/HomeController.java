package com.resemblance.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.resemblance.Paging.Criteria;
import com.resemblance.service.CelebrityService;
import com.resemblance.service.FaceClassifier;
import com.resemblance.service.ImageUploadService;
import com.resemblance.vo.FaceResult;
/*
 * 얼굴분석에 대한 페이지와 service를 관리하는 controller
*/

@Controller
public class HomeController {
	
    //private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
   
    @Autowired
    CelebrityService celebrityService;
    @Autowired
    FaceClassifier faceClassifier;
    @Autowired
	ImageUploadService imageUploadService;
    
    //@Autowired
    //MappingJackson2JsonView jsonView;
	/*
    @RequestMapping(value = "/uploadForm.do")
    public String uploadForm() throws Exception {
	return "uploadForm";
    }*/
    
    
    @RequestMapping(value="/upload.do", method = RequestMethod.GET)
    public String upload() {
    	return "/main";  
    }
 
    
    @ResponseBody
    @RequestMapping(value="/upload.do", method =  RequestMethod.POST, produces="application/json;charset=UTF-8") // produces="text/plain" 은 반환시 한글깨짐 방지
    public Map<String, Object> upload(@RequestParam("file1") MultipartFile file) throws Exception {
    System.out.println("컨트롤러 접근");
    ArrayList<String> classifierResult;
    Map<String, Object> resultMap = new HashMap<String, Object>();
	String fileName = imageUploadService.restore(file, "33"); //이미지저장
	classifierResult = faceClassifier.start(fileName); // 이미지 분석
	imageUploadService.deleteFile(fileName); // 이미지 삭제
	FaceResult faceResult = celebrityService.integrateData(classifierResult); //웹에 전송할 vo작성
	System.out.println(faceResult.getPercent());
	resultMap.put("faceResult",faceResult);
	
	//JSONObject json = new JSONObject(); json.put("result", faceResult);/
	return resultMap;
    }
    
    // 여기는 트랜잭션 딱히 안써도될듯.?
    
    
    	
    	
}













