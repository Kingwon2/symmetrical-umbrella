package com.resemblance.Error;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value=HttpStatus.UNSUPPORTED_MEDIA_TYPE, reason="이미지 분석 실패")  //415 
public class NotFindResemblanceException extends RuntimeException {


}