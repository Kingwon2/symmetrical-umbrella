package com.resemblance.Error;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value=HttpStatus.SERVICE_UNAVAILABLE, reason="서버 오류")    // 파일 생성 삭제 안될때 //503에러  
public class InvalidFileException extends RuntimeException {

}
