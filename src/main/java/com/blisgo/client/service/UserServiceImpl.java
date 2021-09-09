package com.blisgo.client.service;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.util.Base64;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blisgo.client.dto.UserDTO;
import com.blisgo.client.mapper.UserMapper;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public boolean insert(UserDTO user) {
		userMapper.insertUser(user.getNickname(), user.getEmail(), user.getPass());
		return true;
	}

	@Override
	public String userLogin(UserDTO user) {
		// TODO Auto-generated method stub
		return userMapper.userLogin(user.getEmail());
	}

	@Override
	public UserDTO getUser(UserDTO user) {
		// TODO Auto-generated method stub
		return userMapper.getUser(user.getEmail());
	}
	
	@Override
	public int emailCheck(String email) {
		// TODO Auto-generated method stub
		return userMapper.emailCheck(email);
	}
	
	@Override
	public boolean modifyAccount(UserDTO user) {
		// TODO Auto-generated method stub0
		userMapper.modifyAccount(user.getNickname(), user.getMem_no());
		return true;
	}

	@Override
	public String qrCreate(UserDTO user) {
		// TODO Auto-generated method stub
		String imageAsBase64 = "";
		String string = user.getEmail() + "&" + user.getPass();

		try {
			// qr코드 변환 문자열
			String userString = new String(string.getBytes("UTF-8"), "ISO-8859-1");
			// qr코드 바코드 생성값
			int qrcodeColor = 0xFF2e4e96;
			// qr코드 배경색상값
			int backgroundColor = 0xFFFFFFFF;

			QRCodeWriter qrCodeWriter = new QRCodeWriter();
			// 3,4번째 parameter값 : width/height값 지정
			BitMatrix bitMatrix = qrCodeWriter.encode(userString, BarcodeFormat.QR_CODE, 200, 200);
			MatrixToImageConfig matrixToImageConfig = new MatrixToImageConfig(qrcodeColor, backgroundColor);
			BufferedImage bufferedImage = MatrixToImageWriter.toBufferedImage(bitMatrix, matrixToImageConfig);
			// ImageIO를 사용한 QR 저장
			ByteArrayOutputStream output = new ByteArrayOutputStream();
			ImageIO.write(bufferedImage, "png", output);
			imageAsBase64 = Base64.getEncoder().encodeToString(output.toByteArray());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return imageAsBase64;
	}

}
