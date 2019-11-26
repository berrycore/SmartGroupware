package validator;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.Reply;

@Component
public class ReplyValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Reply.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		Reply reply = (Reply)target;
		if( ! StringUtils.hasLength(reply.getReply_content())) {
			errors.rejectValue("reply_content", "error.required.reply");
		}
	}

}
