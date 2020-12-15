package com.resemblance.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;
// Image를 다운, 삭제하는 기능을 제공
public class ImageUploadService {
	private String path;

	public String restore(MultipartFile multipartFile, String ip) {
		try {
			// 파일 정보
			String originFilename = multipartFile.getOriginalFilename();
			String extName
				= originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());  // 파일 형식 추출
			Long size = multipartFile.getSize();
			String savedFileName = ip + extName ;      // 서버에서 저장 할 파일 이름
			
			System.out.println("size : " + size);
			System.out.println("saveFileName : " + savedFileName);
			if(size > 0) {
				writeFile(multipartFile, savedFileName);
				return savedFileName;
			}
			else {
				throw new RuntimeException(); 
			}
		}
		catch (IOException e) {
			// 원래라면 RuntimeException 을 상속받은 예외가 처리되어야 하지만
			// 편의상 RuntimeException을 던진다.
			// throw new FileUploadException();	
			throw new RuntimeException(e);
		}
	}
	
	// 파일을 실제로 write 하는 메서드
	private boolean writeFile(MultipartFile multipartFile, String FileName)
								throws IOException{
		boolean result = false;

		byte[] data = multipartFile.getBytes();
		FileOutputStream fos = new FileOutputStream(path + "\\" + FileName);
		fos.write(data);
		fos.close();
		
		return result;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public void deleteFile(String fileName) {
		new File(path + "\\" + fileName).delete();
	}
}

