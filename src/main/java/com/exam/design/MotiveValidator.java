package com.exam.design;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class MotiveValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return ApplyDto.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ApplyDto applyDto = (ApplyDto)target;
		
		String motive = applyDto.getMotive();
		if	(motive	==	null	||	motive.trim().isEmpty())	{
			
			String msg = "지원 동기에 작성된 내용이 없습니다";
			msg += "(motive is null or empty)";
			
			System.out.println(msg);
			errors.rejectValue("motive","trouble");
		}

		
		
	}
}