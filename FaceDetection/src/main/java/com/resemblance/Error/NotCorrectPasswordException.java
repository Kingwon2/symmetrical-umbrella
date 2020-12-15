package com.resemblance.Error;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value=HttpStatus.LOCKED, reason="비밀번호 불일치") //423
public class NotCorrectPasswordException extends Exception {

}
