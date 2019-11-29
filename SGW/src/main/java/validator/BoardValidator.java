package validator;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.Board;

@Component
public class BoardValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		return Board.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		Board board = (Board)target;
		
		if( ! StringUtils.hasLength(board.getBoard_title())){
			errors.rejectValue("board_title", "error.required.board");
		}
		
		if( ! StringUtils.hasLength(board.getBoard_content())) {
			errors.rejectValue("board_content", "error.required.board");
		}
			
		System.out.println("BoardValidator : " + errors);
	}

}
