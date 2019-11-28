package validator;


import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.SgwAdmin;

@Component
public class AdminLoginValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		return SgwAdmin.class.isAssignableFrom(clazz);
	}
	
	public void validate(Object target, Errors errors) {
	
		SgwAdmin sgwadmin = (SgwAdmin)target;
		if( ! StringUtils.hasLength(sgwadmin.getAdmin_id())) {
			errors.rejectValue("admin_id", "error.required.sgwadmin");
		}
		if( ! StringUtils.hasLength(sgwadmin.getAdmin_password())) {
			errors.rejectValue("admin_password", "error.required.sgwadmin");
		}
		
		System.out.println("validate :: " + errors.toString());
	}
}
