package validator;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.ElecDocument;

@Component
public class DocumentValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return ElecDocument.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		ElecDocument elecDocument = (ElecDocument)target;
		if( ! StringUtils.hasLength(elecDocument.getDocument_title())){
			errors.rejectValue("document_title", "error.required.document");
		}
		
		if( ! StringUtils.hasLength(elecDocument.getDocument_content())){
			errors.rejectValue("document_content", "error.required.document");
		}
		
		if( ! StringUtils.hasLength(elecDocument.getFinal_id())) {
			errors.rejectValue("final_id", "error.required.document");
		}
	}

}
