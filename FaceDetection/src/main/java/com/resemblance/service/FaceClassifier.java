package com.resemblance.service;
// 파이썬 코드를 돌리는 기능을 담당
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

import com.resemblance.Error.InvalidFileException;
import com.resemblance.Error.NotFindResemblanceException;

public class FaceClassifier{
	private ArrayList<String> result = new ArrayList<>();  // 이걸 날려야함 python ~~ 에서 에러났을 시 기존의 result값을 그대로 유지하고 있을것임
	
	public ArrayList<String> start(String fileName) throws Exception{
		detectFace(fileName);
		if(!(isSysError())) {
			if(!(isImgError())) {}
		}
		System.out.println("문제x");
		return result;
	}
	private void detectFace(String fileName) throws Exception {
		String s =null;
		try {
			Process process = Runtime.getRuntime().exec("python C:\\Users\\won\\Desktop\\solo\\ee\\FaceDetection\\python\\src\\image_emotion_gender_demo.py C:\\Users\\won\\Desktop\\solo\\ee\\FaceDetection\\savedImage\\" + fileName);
			BufferedReader stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));
			BufferedReader stdError = new BufferedReader(new InputStreamReader(process.getErrorStream()));
			//System.out.println("python should be run");
			while((s = stdInput.readLine())!=null) {
				result.add(s);
			}
			/*while((s=stdError.readLine())!=null) {
				System.out.println(s);
			}*/
			process.getOutputStream().close();
			process.destroy();
			stdInput.close();
			stdError.close();
		}
		catch(IOException e) {
			throw new InvalidFileException();
			//System.exit(-1);
		}
	}
	
	private boolean isSysError() throws InvalidFileException{
		if(this.result.isEmpty()) {
			result.clear();
			throw new InvalidFileException();
		}
		else {
			return false;
		}
	}
	
	private boolean isImgError() {
		if(this.result.get(0).equals("error")) {
			result.clear();
			throw new NotFindResemblanceException();
		}
		else {
			return false;
		}
	}
		
	
	
	
	

}
