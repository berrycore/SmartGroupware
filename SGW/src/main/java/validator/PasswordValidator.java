package validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class PasswordValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object target, Errors errors) {
		
		String password = (String)target;
		
		if( password.length() < 8 || password.length() > 20) {
			errors.rejectValue("user_password", "error.lengthMismatch.user");
		}
		
		final String pwPattern = "^(?=.*\\d)(?=.*[~`!@#$%\\^&*()-])(?=.*[a-z])(?=.*[A-Z]).{8,20}$";
		Matcher matcher = Pattern.compile(pwPattern).matcher(password);
		if( ! matcher.find() ) {
			errors.rejectValue("user_password", "error.typeMismatch.user");
		}
		
	}

}
