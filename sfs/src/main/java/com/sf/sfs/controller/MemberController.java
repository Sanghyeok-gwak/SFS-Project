package com.sf.sfs.controller;

import java.util.Map;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sf.sfs.dto.MemberDto;
import com.sf.sfs.service.MemberService;
import com.sf.sfs.util.FileUtil;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/member")	
public class MemberController {
	
	private final MemberService memberService;
	private final BCryptPasswordEncoder bcryptPwdEncoder;
	private final FileUtil fileUtil;
	
	//로그인
	@PostMapping("/login.do")
	public String selectMember(MemberDto m,RedirectAttributes ra,HttpSession session) {
		System.out.println(m);
		MemberDto loginUser = memberService.selectMember(m);
		System.out.println(loginUser);
		
		// 세션에 로그인 정보가 있을시 대시보드화면으로
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return "/dashboard";
		// 세선에 로그인 정보가 없을시 로그인 화면 리다이렉트
		}else {
			ra.addFlashAttribute("alertMsg","로그인정보가 유효하지않습니다.");
			return "redirect:/";
		}
		
	}
	
	
	// 대시보드 이동
	@GetMapping("/dashboard.do")
	public String dashboard() {
		return "redirect:/";
	}
	
	// 사원 등록 페이지
	@GetMapping("/signUpMember.do")
	public String signUp(Model model) {
		
		// 사원번호 가져오기
		String memNo = memberService.memNo();
		
		model.addAttribute("memNo",memNo);
		
		return "member/InsertMember";
	}
	
	// 사원 등록
	@PostMapping("insert.do")
	public String insertMem(MemberDto m,MultipartFile uploadFile,RedirectAttributes ra) {
		
		// 비밀번호 암호화 작업
		m.setMemPwd(bcryptPwdEncoder.encode(m.getMemPwd()));
		
	    if (!uploadFile.isEmpty()) {
	        // 파일 업로드
	        Map<String, String> map = fileUtil.fileupload(uploadFile, "profile");
	        String filePath = map.get("filePath") + "/" + map.get("filesystemName");
	        // MemberDto에 프로필 URL 설정
	        m.setProfileURL(filePath);
	    } else {
	        m.setProfileURL(null); // 파일이 없을 경우 null로 설정
	    }
		
		
	    int result = memberService.insertMember(m);
	    
	    if(result > 0) {
	    	ra.addFlashAttribute("alertMsg","사원이 등록되었습니다.");
	    	return "redirect:/";
	    }else {
	    	ra.addFlashAttribute("alertMsg","사원 등록에 실패했습니다.");
	    	return "redirect:signUpMember.do";
	    }
		
		
	}
	
	// 로그아웃
	@PostMapping("/logout.do")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
		
	}
	
	
	
	
	
	
	
	

}
