package com.blisgo.client.service;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sendgrid.Method;
import com.sendgrid.Request;
import com.sendgrid.Response;
import com.sendgrid.SendGrid;
import com.sendgrid.helpers.mail.Mail;
import com.sendgrid.helpers.mail.objects.Content;
import com.sendgrid.helpers.mail.objects.Email;
import com.sendgrid.helpers.mail.objects.Personalization;

// sendGrid 사의 API를 활용한 문자, 이메일 전송 서비스를 이용하였음
// 구글 공용 드라이브 계정으로 이용하였음
@Service
public class MailService {
	private static final Logger logger = LoggerFactory.getLogger(MailService.class);

	// 단순 평문 텍스트를 보내고 싶다면 이 메서드를 이용하세요
	public String sendTextEmail(String receiver, String nickname) throws IOException {

		Email from = new Email("okjaeook98@gmail.com");
		String subject = "분리수GO! 인증";
		Email to = new Email(receiver);
		Content content = new Content("text/plain", "여기에 글을 작성하세요. html를 전송하려면 text/html 로 변경 후 파일제어로 html 삽입하세요");
		Mail mail = new Mail(from, subject, to, content);

		SendGrid sg = new SendGrid("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");
		Request request = new Request();
		try {
			request.setMethod(Method.POST);
			request.setEndpoint("mail/send");
			request.setBody(mail.build());
			Response response = sg.api(request);
			logger.info(response.getBody());
			return response.getBody();
		} catch (IOException ex) {
			throw ex;
		}
	}

	// 해당 서비스에서 제공하는 템플릿 메일을 보내고 싶다면 이 메서드를 이용하세요
	// 단 템플릿 id 필요함
	public String sendTemplateEmail(String receiver, String nickname) throws IOException {
		Email from = new Email("okjaeook98@gmail.com");
		Email to = new Email(receiver);
		Mail mail = new Mail();
		DynamicTemplatePersonalization personalization = new DynamicTemplatePersonalization();
		personalization.addTo(to);
		mail.setFrom(from);
		mail.setSubject("분리수GO! 인증");

		// sendgrid는 메시지를 보낼때 파라미터 인식 {{}}
		// 템플릿 메일에 동적으로 데이터를 삽입할 때 이용함
		personalization.addDynamicTemplateData("nickname", nickname);
		personalization.addDynamicTemplateData("email", receiver);

		mail.addPersonalization(personalization);
		mail.setTemplateId("d-2d054ad4b2b84eb5aa1026eb5a62a7b9");
		SendGrid sg = new SendGrid("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");
		Request request = new Request();

		try {
			request.setMethod(Method.POST);
			request.setEndpoint("mail/send");
			request.setBody(mail.build());
			Response response = sg.api(request);
			logger.info(response.getBody());
			return response.getBody();
		} catch (IOException ex) {
			throw ex;
		}
	}

	// 템플릿에 동적 데이터를 삽입하기위한 핸들러
	private static class DynamicTemplatePersonalization extends Personalization {

		@JsonProperty(value = "dynamic_template_data")
		private Map<String, Object> dynamic_template_data;

		@JsonProperty("dynamic_template_data")
		public Map<String, Object> getDynamicTemplateData() {
			if (dynamic_template_data == null) {
				return Collections.<String, Object>emptyMap();
			}
			return dynamic_template_data;
		}

		public void addDynamicTemplateData(String key, String value) {
			if (dynamic_template_data == null) {
				dynamic_template_data = new HashMap<String, Object>();
				dynamic_template_data.put(key, value);
			} else {
				dynamic_template_data.put(key, value);
			}
		}

	}

}