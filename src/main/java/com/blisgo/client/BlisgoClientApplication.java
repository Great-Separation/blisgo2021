package com.blisgo.client;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

@SpringBootApplication
public class BlisgoClientApplication implements ApplicationRunner {

	public static void main(String[] args) {
		SpringApplication.run(BlisgoClientApplication.class, args);
	}

	@Autowired
	ResourceLoader resourceLoader;
	public static String termsOfAgreement;

	@Override
	public void run(ApplicationArguments args) throws Exception {
		// TODO Auto-generated method stub
		Resource resource = resourceLoader.getResource("classpath:static/agreement.txt");
		try {
			// TODO 사용 동의서 호출.
			// 이때의 파일 호출은 heroku 배포전 빌드를 통해 resource 파일들이 자동으로 target 디렉터리에 로딩되어 있음.
			// 이점을 고려하여 배포전과 배포후 원활한 리소스 호출을 위해
			// 기본 classpath를 사용. 파일을 호출할 수 있음
			if (resource.exists()) {
				termsOfAgreement = Files.readString(Path.of(resource.getURI()));
				// 호출한 사용 동의서를 textarea에 삽입
				System.out.println("사용 동의서 정상 호출");
			} else {
				System.out.println("사용 동의서 파일 없음");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("사용 동의서 호출 실패");
		}

	}

}
