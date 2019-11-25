package validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class PhoneNumberValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		return String.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		String phoneNumber = (String)target;
		
		final String phonePattern = "^[0-9\\-]*$";
		Matcher matcher = Pattern.compile(phonePattern).matcher(phoneNumber);
		if( ! matcher.find()) {
			errors.rejectValue("user_phone", "error.typeMismatch.user");
		}
	}

	
}
