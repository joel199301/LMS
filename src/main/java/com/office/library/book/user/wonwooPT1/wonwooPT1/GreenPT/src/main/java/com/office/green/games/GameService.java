package com.office.green.games;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.green.BoardVo;
import com.office.green.WriteVo;

@Service
public class GameService {
	
	@Autowired
	GameDAO gameDAO;


	public int registerGameConFirm(GameVo gameVo) {
		
		int result = gameDAO.insertGame(gameVo);
		
		return result;
	}


	public List<GameVo> home() {
		return gameDAO.home();
	}


	public GameVo details(String g_g_no) {
		return gameDAO.details(g_g_no);
	}


	public List<GameVo> searchKeyword(String g_g_name) {
		return gameDAO.searchKeyword(g_g_name);
	}


	public int insertdownLoad(int g_g_no, int g_m_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("g_g_no", g_g_no);
		map.put("g_m_no", g_m_no);
		return gameDAO.insertdownLoad(map);
	}


	public List<GameVo> topgame() {
		return gameDAO.topgame();
	}


	public int postWrite(WriteVo writeVo) {
		return gameDAO.postWrite(writeVo);
	}


	public List<WriteVo> reply(WriteVo writeVo) {
		return gameDAO.reply(writeVo);
	}


	public int rcount(GameVo gameVo) {
		return gameDAO.rcount(gameVo);
	}


	public BoardVo boardDetail(String fB_no) {
		return gameDAO.boardDetail(fB_no);
	}


	public Integer downNo(DownVo dv) {
		
		return gameDAO.downNo(dv);
	}


	

}
