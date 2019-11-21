package validator;


import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;

import model.User;

public class LoginValidator {

	public boolean supports(Class<?> clazz) {
		
		return User.class.isAssignableFrom(clazz);
	}

	
	public void validate(Object target, Errors errors) {
	
		User user = (User)target;
		if( ! StringUtils.hasLength(user.getUser_id())) {
			errors.rejectValue("userId", "error.required");
		}
		if( ! StringUtils.hasLength(user.getUser_password())) {
			errors.rejectValue("password", "error.required");
		}
		if( errors.hasErrors()) {
			errors.reject("error.input.user");
		}
	}
}
