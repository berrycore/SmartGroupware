package validator;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.SgwAdmin;

@Component
public class AdminDuplicationValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return SgwAdmin.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		SgwAdmin sgwAdmin = (SgwAdmin)target;

		if( !StringUtils.hasLength(sgwAdmin.getAdmin_id())) {
			errors.rejectValue("admin_id", "error.required.sgwadmin");
		}
		
		if( sgwAdmin.getAdmin_id() != null ) {
			if ( sgwAdmin.getAdmin_id().length() < 8) {
				errors.rejectValue("admin_id", "error.lengthMismatch.sgwadmin");
			}			
		}
		
		System.out.println("validate :: " + errors.toString());
	}

}
