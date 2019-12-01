package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
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
import model.User;

@Controller
public class MailController {

	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value="/mail/showNewMailList.html", method=RequestMethod.GET)
	public ModelAndView checkMailList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("home/mail/MailViewList");
		
		User user = (User)request.getSession().getAttribute("loginUser");
		
		
		Properties props = new Properties();
		props.put("mail.pop3.host", "berrycore.net");
		props.put("mail.pop3.port", "995");
		props.put("mail.pop3.starttls.enable", "true");
		props.put("mail.pop3.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		
		Authenticator auth = new MyAuthentication("userid", "password");
		Session session = Session.getDefaultInstance(props, auth);
		session.setDebug(true);
		
		Store store = null;
		Folder folder = null;
		try {
			store = session.getStore("pop3");
			store.connect();
			System.out.println(store.toString());
			
			folder = store.getFolder("INBOX");
			System.out.println(folder.toString());
			
			folder.open(Folder.READ_ONLY);
			List<Message> messages = Arrays.asList(folder.getMessages());
			System.out.println("messages : " + messages);
			for(Message m : messages) {
				System.out.println("subject : " + m.getSubject());
				System.out.println("From : " + m.getFrom());
				System.out.println("Date : " + m.getHeader("Date"));
				System.out.println("Body : " + getTextFromMessage(m));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				folder.close(false);
				store.close();
			} catch (MessagingException e1) {
				e1.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return mav;
	}
	
	class MyAuthentication extends Authenticator{
		private String userName;
		private String password;
		public MyAuthentication(String userName, String password) {
			this.userName = userName;
			this.password = password;
		}
		@Override
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(userName, password);
		}
	}
	
	private String getTextFromMessage(Message message) throws MessagingException, IOException {
        String result = "";

        if (message.isMimeType("text/plain")) {
            result = message.getContent().toString();
        } else if (message.isMimeType("multipart/*")) {
            MimeMultipart mimeMultipart = (MimeMultipart) message.getContent();
            result = getTextFromMimeMultipart(mimeMultipart);
        }
        return result;
    }

    private String getTextFromMimeMultipart(MimeMultipart mimeMultipart)  throws MessagingException, IOException{
        String result = "";
        int count = mimeMultipart.getCount();
        for (int i = 0; i < count; i++) {
            BodyPart bodyPart = mimeMultipart.getBodyPart(i);
            if (bodyPart.isMimeType("text/plain")) {
                result = result + "\n" + bodyPart.getContent();
                break; // without break same text appears twice in my tests
            } else if (bodyPart.isMimeType("text/html")) {
                String html = (String) bodyPart.getContent();
                result = result + "\n" + org.jsoup.Jsoup.parse(html).text();
            } else if (bodyPart.getContent() instanceof MimeMultipart){
                result = result + getTextFromMimeMultipart((MimeMultipart)bodyPart.getContent());
            }
        }
        return result;
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
//				messageHelper.setFrom( email.getSender_name() );
				messageHelper.setFrom( "shjeong@berrycore.net" );
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
