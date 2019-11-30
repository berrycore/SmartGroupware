package controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Email;

@Controller
public class MailController {

	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value="/mail/showNewMailList.html", method=RequestMethod.GET)
	public ModelAndView showNewMailList() {
		ModelAndView mav = new ModelAndView("home/mail/MailViewList");
		//TODO:
		return mav;
	}
	
	@RequestMapping(value="/mail/sendMail.html", method=RequestMethod.GET)
	public ModelAndView sendMail() {
		ModelAndView mav = new ModelAndView("home/mail/MailWriteNew");
		return mav;
	}
	
	@RequestMapping(value="/mail/sendMail.html", method=RequestMethod.POST)
	public ModelAndView sendMail(HttpServletRequest request, Email email, BindingResult br) {
		ModelAndView mav = new ModelAndView("home/mail/MailWriteNew");
		
		if( br.hasErrors()) {
			return mav;
		}else {
			// 
			System.out.println("Email : " + email);
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
				messageHelper.setTo( email.getReceiver_name() );
				messageHelper.setText( email.getMail_content(), true);
				messageHelper.setFrom( "test@berrycore.net");
				messageHelper.setSubject( email.getMail_title());
				mailSender.send(message);
				mav.setViewName("home/mail/MailWriteNewSuccess");
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return mav;
	}
}
