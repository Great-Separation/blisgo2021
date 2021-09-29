package com.blisgo.client.service;

import java.sql.Timestamp;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blisgo.client.dto.BoardDTO;
import com.blisgo.client.dto.CommentDTO;
import com.blisgo.client.dto.UserDTO;
import com.blisgo.client.mapper.CommunityMapper;
import com.blisgo.client.mapper.UserMapper;

@Service("CommunityService")
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	private CommunityMapper communityMapper;

	@Autowired
	private UserMapper userMapper;

	@Override
	public void regist(String email, String writer,String category, String title, String content) {
		Timestamp date = new Timestamp(System.currentTimeMillis());
		communityMapper.regist(title, writer,category ,content, date, 1, 0);
	}

	@Override
	public ArrayList<BoardDTO> listBoard() {
		return communityMapper.listBoard();
	}

	@Override
	public BoardDTO contentBoard(int bd_no) {
		return communityMapper.contentBoard(bd_no);
	}

	@Override
	public ArrayList<CommentDTO> getComment(int bd_no) {
		// TODO Auto-generated method stub
//		ArrayList<CommentDTO> comments = communityMapper.getComment(bd_no);
//		for (CommentDTO comment : comments) {
//			comment.setComment_nick(getNickname(comment.getMem_no()));
//		}
		return communityMapper.getComment(bd_no);
	}
	@Override
	public void addComment(int bd_no, int mem_no, String content) {
		// TODO Auto-generated method stub
		Timestamp comment_date = new Timestamp(System.currentTimeMillis());
		communityMapper.addComment(bd_no, mem_no, content, comment_date);
	}
	@Override
	public UserDTO getCommentUser(int mem_no) {
		// TODO Auto-generated method stub
		return userMapper.getCommentUser(mem_no);
	}
	@Override
	public void removeComment(int comment_no, int bd_no) {
		// TODO Auto-generated method stub
		communityMapper.removeComment(comment_no, bd_no);
	}
	@Override
	public void deleteBoard(int bd_no) {
		communityMapper.deleteBoard(bd_no);
	}
	@Override
	public void viewIncrease(int bd_no, int bd_views) {
		communityMapper.viewIncrease(bd_no,bd_views);
	}
	@Override
	public void updateBoard(String bd_title, String bd_content, int bd_no) {
		communityMapper.updateBoard(bd_title,bd_content,bd_no);
	}
	@Override
	public int getCountContentComment(int bd_no) {
		return communityMapper.getCountContentComment(bd_no);
	}

	@Override
	public void favoriteBoard(int bd_no, int bd_favorite) {
		communityMapper.favoriteBoard(bd_favorite,bd_no);
	}

}
