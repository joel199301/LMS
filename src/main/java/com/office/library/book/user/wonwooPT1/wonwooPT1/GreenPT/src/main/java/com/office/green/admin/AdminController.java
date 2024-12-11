package com.office.green.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.office.green.games.GameService;
import com.office.green.games.UploadFileService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminService adminService;
	
	@Autowired
	UploadFileService uploadFileService;
	
	
	@Autowired
	GameService gameService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	

	// 회원가입 입력
	@GetMapping("/createAdmin")
	public String createAdmin() {
		return "/green/admin/create_admin_account_form";
	}

	// 회원가입 제출
	@PostMapping("/createAdmin")
	public String createAdmin(AdminVo adminVo, @RequestParam("file") MultipartFile file) {

		String nextPage = "/green/admin/create_ok";
		
		String savedFileName = uploadFileService.upload(file);
		
		if(savedFileName != null) {
			adminVo.setG_m_thumbnail(savedFileName);
			
			int result = adminService.createAdmin(adminVo);
			
			if (result <= 0) {
				nextPage = "/green/admin/create_ng";
			}else {
				nextPage = "/green/admin/create_ok";
			}
		}
		return nextPage;
		
	}

	// 로그인
	@GetMapping("/adminLogin")
	public String adminLogin() {
		return "/green/admin/admin_login_form";
	}

	// 로그인 처리
	@PostMapping("/adminLogin")
	public String adminLogin(AdminVo adminVo, HttpSession session) {
		AdminVo loginedAdminVo = adminService.loginConfirm(adminVo);
		
		if(loginedAdminVo == null)
			return "/green/admin/admin_login_ng";
		else {
			session.setAttribute("loginedAdminVo", loginedAdminVo);
			session.setMaxInactiveInterval(60*30); //30분 셋팅
		}

		return "redirect:/";
	}
	
	//다운로드
	@GetMapping("/downLoad")
	public String downLoad(HttpSession session,
	         @RequestParam("g_g_no") int g_g_no) {
		
		int result = adminService.downLoad(g_g_no);
		if(result <= 0)
			return "/green/admin/download_ng";
		
		AdminVo vo = (AdminVo) session.getAttribute("loginedAdminVo");
		
		result = gameService.insertdownLoad(g_g_no, vo.getG_m_no());
		if(result <= 0)
			return "/green/admin/download_ng";
		
		return "/green/admin/download_ok";
	}
	
	// 로그아웃
		@GetMapping("/logout")
		public String logout(HttpSession session) {
			session.invalidate();
			String nextPage = "redirect:/";
			return nextPage;
		}
		
		
		// 가입승인요청
		@GetMapping("/approve")
		public String approve(@RequestParam("g_m_no") int g_m_no) {
			String nextPage = "redirect:/profile";
			adminService.approve(g_m_no);
			
			return nextPage;
		}
	
		
		
		  // 계정수정 화면
		  @GetMapping("/modifyAdmin") 
		  public String modifyAdmin(HttpSession session) {
			  String nextPage = "/green/admin/modify_admin_account_form"; 
			  
			  AdminVo loginedAdminVo = 
					  (AdminVo) session.getAttribute("loginedAdminVo");
			  
			  if(loginedAdminVo == null)
				  nextPage = "redirect:/green/admin/admin_login_form";
			  
		  return nextPage;
		  }
		  
		  // 계정정보수정
		  @PostMapping("/modifyAdmin") 
		  public String modifyAdminConfirm(AdminVo adminVo, HttpSession session) {
			  String nextPage = "/green/admin/modify_ok";
			  
			  try {
				
				String encodPsw = passwordEncoder.encode(adminVo.getG_m_pw() );
				adminVo.setG_m_pw(encodPsw);
				
				adminService.modifyAdminConfirm(adminVo);
				session.setAttribute("loginedAdminVo", adminVo);
				
			} catch (Exception e) {
				e.printStackTrace();
				nextPage = "/green/admin/modify_ng";
			}
			  
			  return nextPage;
		  }
		 
	
	
	

}
