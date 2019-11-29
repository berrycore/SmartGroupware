package validator;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.Notice;

@Component
public class NoticeValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Notice.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		Notice notice = (Notice)target;
		
		if( ! StringUtils.hasLength(notice.getNotice_title())){
			errors.rejectValue("notice_title", "error.required.notice");
		}
		
		if( ! StringUtils.hasLength(notice.getNotice_content())) {
			errors.rejectValue("notice_content", "error.required.notice");
		}
			
		System.out.println("NoticeValidator : " + errors);
	}

}
