package validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.SgwAdmin;

@Component
public class AdminPasswordChangeValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return SgwAdmin.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		SgwAdmin sgwAdmin = (SgwAdmin)target;
		
		if( ! StringUtils.hasLength(sgwAdmin.getAdmin_password()) ) {
			errors.rejectValue("admin_password", "error.required.sgwadmin");
		}
		if(sgwAdmin.getAdmin_password().length() < 8 || sgwAdmin.getAdmin_password().length() > 20) {
			errors.rejectValue("admin_password", "error.lengthMismatch.sgwadmin");
		}
		
		final String pwPattern = "^(?=.*\\d)(?=.*[~`!@#$%\\^&*()-])(?=.*[a-z])(?=.*[A-Z]).{8,20}$";
		Matcher matcher = Pattern.compile(pwPattern).matcher(sgwAdmin.getAdmin_password());
		if( ! matcher.find() ) {
			errors.rejectValue("admin_password", "error.typeMismatch.sgwadmin");
		}

	}

}
