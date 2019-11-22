package validator;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.User;

@Component
public class UserEntryValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz);
	}

	
	public void validate(Object target, Errors errors) {
		
		User user = (User)target;
		
		if( ! StringUtils.hasLength(user.getUser_name())) {
			errors.rejectValue("user_name", "error.required.user");
		}
		if( ! StringUtils.hasLength(user.getUser_id())) {
			errors.rejectValue("user_id", "error.required.user");
		}
		if( ! StringUtils.hasLength(user.getUser_phone())) {
			errors.rejectValue("user_phone", "error.required.user");
		}
		if( ! StringUtils.hasLength(user.getTeam_id())) {
			errors.rejectValue("team_id", "error.required.user");
		}
		if( ! StringUtils.hasLength(user.getPosition_id())) {
			errors.rejectValue("position_id", "error.required.user");
		}
		if( ! StringUtils.hasLength(user.getUser_description())) {
			errors.rejectValue("user_description", "error.required.user");
		}
		
	}
	

}
