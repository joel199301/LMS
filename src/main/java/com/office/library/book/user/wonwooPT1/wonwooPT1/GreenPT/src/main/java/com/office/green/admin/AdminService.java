package com.office.green.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.green.BoardVo;
import com.office.green.games.DownVo;


@Service
public class AdminService {
	
	@Autowired
	AdminDao adminDao;

	public AdminService() {
		// TODO Auto-generated constructor stub
	}

	public int createAdmin(AdminVo adminVo) {
		return adminDao.createAdmin(adminVo);
	}

	public AdminVo loginConfirm(AdminVo adminVo) {
		AdminVo loginedAdminVo = adminDao.selectAdmin(adminVo);
		if (loginedAdminVo != null)
			System.out.println("로그인성공!!");
		else
			System.out.println("로그인해주세요!!");
		return loginedAdminVo;
	}

	public AdminVo profile(String g_m_mail) {
		return adminDao.profile(g_m_mail);
	}

	public int downLoad(int g_g_no) {
		return adminDao.downLoad(g_g_no);
	}

	public List<AdminVo> reqID() {
		return adminDao.reqID();
	}


	public void approve(int g_m_no) {
		adminDao.approve(g_m_no);
		
	}

	public List<DownVo> downGame(int g_m_no) {
		return adminDao.downGame(g_m_no);
	}

	public void modifyAdminConfirm(AdminVo adminVo) {
		adminDao.modifyAdminConfirm(adminVo);
		
	}

	public List<BoardVo> boardListAll() {
		return adminDao.boardListAll();
	}

	public AdminVo Free_board_write(String g_m_name) {
		return adminDao.Free_board_write(g_m_name);
	}

	public int Free_board_insert(BoardVo boardVo) {
		return adminDao.Free_board_insert(boardVo);
	}



}
