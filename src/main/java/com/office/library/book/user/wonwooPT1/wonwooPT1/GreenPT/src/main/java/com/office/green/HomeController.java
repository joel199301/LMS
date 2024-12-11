package com.office.green;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.office.green.admin.AdminService;
import com.office.green.admin.AdminVo;
import com.office.green.games.DownVo;
import com.office.green.games.GameService;
import com.office.green.games.GameVo;
import com.office.green.games.UploadFileService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	GameService gameService;

	@Autowired
	UploadFileService uploadFileService;
	
	@Autowired
	AdminService adminService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {

		List<GameVo> gameVo = gameService.home();
		
		
		  AdminVo loginedAdminVo = (AdminVo) session.getAttribute("loginedAdminVo");
		  if(loginedAdminVo != null) {
		  AdminVo adminVo = adminService.profile(loginedAdminVo.getG_m_mail());
		  List<DownVo> VO2 = adminService.downGame(adminVo.getG_m_no());
		  model.addAttribute("Vos2", VO2);
		  }
		 
		List<GameVo> topgameVo = gameService.topgame();
		model.addAttribute("topgame", topgameVo);

		model.addAttribute("gameVos", gameVo);

		return "index";
	}

	@GetMapping("/browse")
	public String browse() {
		return "/green/browse";
	}

	@GetMapping("/details")
	public String details(Model model, @RequestParam("g_g_no") String g_g_no, WriteVo writeVo, HttpSession session) {
		AdminVo loginedAdminVo = (AdminVo) session.getAttribute("loginedAdminVo");
		
		
		GameVo gameVo = gameService.details(g_g_no);
		model.addAttribute("GameVo", gameVo);
		
		  List<WriteVo> Vo =  gameService.reply(writeVo);
		 
		  int rcnt = gameService.rcount(gameVo);
		  
		
		  DownVo dv = new DownVo();
		  dv.setG_g_no(Integer.valueOf( g_g_no));
		  dv.setG_m_no(loginedAdminVo.getG_m_no());
		  Integer downGame = gameService.downNo( dv );
		  
		  downGame = downGame == null? 0 : downGame;
			  
		  model.addAttribute("replys", Vo);
		  model.addAttribute("rcount", rcnt);
		  model.addAttribute("downGame",downGame);
		  
		
		
		return "/green/details";
	}
	
	

	@GetMapping("/profile")
	public String profile(Model model, HttpSession session) {
		
		AdminVo loginedAdminVo = (AdminVo) session.getAttribute("loginedAdminVo");
		
		
		
		AdminVo adminVo = adminService.profile(loginedAdminVo.getG_m_mail());
		
		List<AdminVo> VO = adminService.reqID();
		
		List<DownVo> VO2 = adminService.downGame(adminVo.getG_m_no());
		
		model.addAttribute("AdminVo", adminVo);
		model.addAttribute("Vos", VO);
		
		model.addAttribute("Vos2", VO2);
		
		System.out.println(VO2);
		
		return "/green/profile";
	}

	// 게시판 목록
	@GetMapping("/Free_board")
	public String Free_board(Model model) {
		
		List<BoardVo> list = adminService.boardListAll();
		
		model.addAttribute("boardList", list);
		
		return "/green/Free_board";
	}
	
	// 게시글쓰기
	@GetMapping("/board_write")
	public String Free_board_write() {
		
		return "/green/Free_board_write";
	}
	
	
	// 게시글 상세보기
	@GetMapping("/Free_board_detail")
	public String Free_board_detail(Model model, @RequestParam("FB_no") String FB_no) {
		
		BoardVo boardVo = gameService.boardDetail(FB_no);
		
		model.addAttribute("Boards", boardVo);
		
		return "/green/Free_board_detail";
	}
	
	
	@PostMapping("/board_write")
	public String Free_board_write(HttpSession session, BoardVo boardVo) {
		AdminVo loginedAdminVo = (AdminVo) session.getAttribute("loginedAdminVo");
		boardVo.setG_m_name(loginedAdminVo.getG_m_name());
		
		int result = adminService.Free_board_insert(boardVo);
	
		return "redirect:/Free_board";
	}
	
	
	

	@GetMapping("/gamelists")
	public String gamelists(Model model) {

		List<GameVo> gameVo = gameService.home();

		model.addAttribute("gameVos", gameVo);

		return "/green/gamelists";
	}

	@GetMapping("/registerGameForm")
	public String registerGameForm() {
		return "green/register_game_form";
	}

	@PostMapping("/registerGameForm")
	public String registerGameForm(@RequestParam("file1") MultipartFile file1,
			@RequestParam("file2") MultipartFile file2, 
			@RequestParam("file3") MultipartFile file3, 
			@RequestParam("file4") MultipartFile file4, 
			@RequestParam("file5") MultipartFile file5, 
			GameVo gameVo) {

		String nextPage = "green/register_book_ok";

		// SAVE FILE
		String savedFileName1 = uploadFileService.upload(file1);
		String savedFileName2 = uploadFileService.upload(file2);
		String savedFileName3 = uploadFileService.upload(file3);
		String savedFileName4 = uploadFileService.upload(file4);
		String savedFileName5 = uploadFileService.upload(file5);

		if (savedFileName1 != null) {
			gameVo.setG_thumbnail1(savedFileName1);
			gameVo.setG_thumbnail2(savedFileName2);
			gameVo.setG_thumbnail3(savedFileName3);
			gameVo.setG_thumbnail4(savedFileName4);
			gameVo.setG_thumbnail5(savedFileName5);

			int result = gameService.registerGameConFirm(gameVo);

			if (result <= 0)
				nextPage = "green/register_book_ng";

		} else {
			nextPage = "/green/register_book_ok";

		}

		return nextPage;
	}
	
	   // 게시물검색
		@GetMapping("/searchKeyword")
		public String searchKeyword(Model model, @RequestParam("searchKeyword") String g_g_name) {

			List<GameVo> gameVos = gameService.searchKeyword(g_g_name);
			
			model.addAttribute("gameVos", gameVos);
			
			return "/green/search";
		}
		
		
		
		// 댓글 작성
		@PostMapping("/write")
		public String postWrite(WriteVo writeVo, Model model, HttpSession session) {
			String nextPage = "redirect:/details?g_g_no=" + writeVo.getG_g_no();
			
			
			
			AdminVo loginedAdminVo = (AdminVo) session.getAttribute("loginedAdminVo");
			  if(loginedAdminVo != null) {
				  writeVo.setG_m_name(loginedAdminVo.getG_m_name());
				  int result = gameService.postWrite(writeVo);
				  
			  }else {
				  nextPage = "/green/admin/admin_login_form";
			  }
			

			return nextPage;
		}
	
	
	
	
	
	

}
