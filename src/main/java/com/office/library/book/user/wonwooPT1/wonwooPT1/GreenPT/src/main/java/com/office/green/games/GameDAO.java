package com.office.green.games;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.office.green.BoardVo;
import com.office.green.WriteVo;

@Component
public class GameDAO {
	@Autowired
	GameService gameService;
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public GameDAO() {
		// TODO Auto-generated constructor stub
	}

	public int insertGame(GameVo gameVo) {
		return sqlSessionTemplate.insert("game.insertGame", gameVo);
	}

	public List<GameVo> home() {
		return sqlSessionTemplate.selectList("game.home");
	}

	public GameVo details(String g_g_no) {
		return sqlSessionTemplate.selectOne("game.details", g_g_no);
	}

	public List<GameVo> searchKeyword(String g_g_name) {
		return sqlSessionTemplate.selectList("game.searchKeyword", g_g_name);
	}

	public int insertdownLoad(Map<String, Integer> map) {
		return sqlSessionTemplate.insert("downloadgame.insert", map);
	}

	public List<GameVo> topgame() {
		return sqlSessionTemplate.selectList("game.topgame");
	}

	public int postWrite(WriteVo writeVo) {
		return sqlSessionTemplate.insert("game.postWrite", writeVo);
	}

	public List<WriteVo> reply(WriteVo writeVo) {
		return sqlSessionTemplate.selectList("game.reply", writeVo);
	}

	public int rcount(GameVo gameVo) {
		return sqlSessionTemplate.selectOne("game.rcount", gameVo);
	}

	public BoardVo boardDetail(String fB_no) {
		return sqlSessionTemplate.selectOne("game.boardDetail", fB_no);
	}

	public Integer downNo(DownVo dv) {
		return sqlSessionTemplate.selectOne("game.downNo",dv);
	}

}
