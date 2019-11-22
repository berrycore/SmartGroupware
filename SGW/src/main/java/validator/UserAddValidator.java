package validator;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.User;

@Component
public class UserAddValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		User user = (User)target;

		if( !StringUtils.hasLength(user.getUser_id())) {
			errors.rejectValue("user_id", "error.required");
		}

		if( user.getUser_id() != null ) {
			if ( user.getUser_id().length() != 6) {
				errors.rejectValue("user_id", "typeMismatch");
			}			
		}
		
		System.out.println("validate :: " + errors.toString());
	}

}
