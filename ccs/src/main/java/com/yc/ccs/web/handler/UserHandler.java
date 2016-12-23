package com.yc.ccs.web.handler;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserHandler {

	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping("/forget")
	public String forget(String username, String email, HttpSession session) {
		LogManager.getLogger().debug("请求UserHandler进行forget的操作....");
		LogManager.getLogger().debug("请求数据username:" + username + ", email:" + email);
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setFrom("studymail_test@163.com");
			helper.setTo(email);
			helper.setSubject("找回密码");
			String hrefStr = session.getServletContext().getContextPath() + "/user/getpassword?username=" + username;
			System.out.println(hrefStr);
			helper.setText("<a href='" + hrefStr + "'>找回密码</a><br>如果连接不可用拷贝" + hrefStr + "到地址栏...", true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
			return "redirect:/page/forgetPassword.jsp";
		}

		return "redirect:/page/forgetSuccess.jsp";
	}
}
