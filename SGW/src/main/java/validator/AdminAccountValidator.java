package validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.SgwAdmin;

@Component
public class AdminAccountValidator implements Validator {
	
	private Pattern pattern;
	private Matcher matcher;
	private static final String IPADDRESS_PATTERN = 
			"^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\." +
			"([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\." +
			"([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\." +
			"([01]?\\d\\d?|2[0-4]\\d|25[0-5])$";
	
	public boolean supports(Class<?> clazz) {
		return SgwAdmin.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		SgwAdmin sgwAdmin = (SgwAdmin)target;
		
		if( !StringUtils.hasLength(sgwAdmin.getAdmin_name())) {
			errors.rejectValue("admin_name", "error.required.sgwadmin");
		}

		if( !StringUtils.hasLength(sgwAdmin.getAdmin_id())) {
			errors.rejectValue("admin_id", "error.required.sgwadmin");
		}

		if( sgwAdmin.getAdmin_id() != null ) {
			if ( sgwAdmin.getAdmin_id().length() < 8) {
				errors.rejectValue("admin_id", "error.lengthMismatch.sgwadmin");
			}			
		}
		
		if( sgwAdmin.getAdmin_password().length() < 8 || sgwAdmin.getAdmin_password().length() > 20 ) {
			errors.rejectValue("admin_password", "error.lengthMismatch.sgwadmin");
		}
		
		pattern = Pattern.compile(IPADDRESS_PATTERN);
		matcher = pattern.matcher(sgwAdmin.getAdmin_access_ip());
		if( ! matcher.matches()) {
			errors.rejectValue("admin_access_ip", "error.typeMismatch.sgwadmin");
		}
		
		System.out.println("validate :: " + errors.toString());
	}
}
