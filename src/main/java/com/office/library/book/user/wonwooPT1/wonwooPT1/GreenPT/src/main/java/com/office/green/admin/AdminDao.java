package com.office.green.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.office.green.BoardVo;
import com.office.green.games.DownVo;


@Component
public class AdminDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	public AdminDao() {
		// TODO Auto-generated constructor stub
	}

	public int createAdmin(AdminVo adminVo) {
		String encodPsw = passwordEncoder.encode(adminVo.getG_m_pw() );
		adminVo.setG_m_pw(encodPsw);
		
		return sqlSessionTemplate.insert("admin.createAdmin", adminVo);
	}

	public AdminVo selectAdmin(AdminVo adminVo) {
		AdminVo vo = sqlSessionTemplate.selectOne("admin.adminselect", adminVo);
		// 암호화 패스워드 검증
		if(vo != null && passwordEncoder.matches(adminVo.getG_m_pw(), vo.getG_m_pw()))
			return vo;
		else
			return null;

	}

	public AdminVo profile(String g_m_mail) {
		return sqlSessionTemplate.selectOne("admin.adminProfile", g_m_mail);
	}

	public int downLoad(int g_g_no) {
		return sqlSessionTemplate.update("game.downLoad", g_g_no);
	}

	public List<AdminVo> reqID() {
		return sqlSessionTemplate.selectList("admin.reqID");
	}

	public void approve(int g_m_no) {
		sqlSessionTemplate.update("admin.approve", g_m_no);
		
	}

	public List<DownVo> downGame(int g_m_no) {
		return sqlSessionTemplate.selectList("admin.downGame",g_m_no);
	}

	public void modifyAdminConfirm(AdminVo adminVo) {
		sqlSessionTemplate.update("admin.modifyAdminConfirm", adminVo);
		
	}

	public List<BoardVo> boardListAll() {
		return sqlSessionTemplate.selectList("admin.boardlist");
	}

	public AdminVo Free_board_write(String g_m_name) {
		return sqlSessionTemplate.selectOne("admin.selectName", g_m_name);
	}

	public int Free_board_insert(BoardVo boardVo) {
		return sqlSessionTemplate.insert("admin.boardinsert", boardVo);
	}



}
