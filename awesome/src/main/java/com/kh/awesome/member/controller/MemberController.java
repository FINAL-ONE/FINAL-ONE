package com.kh.awesome.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.awesome.member.model.exception.MemberException;
import com.kh.awesome.member.model.service.MemberService;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.member.model.vo.PageInfo;

import com.kh.awesome.common.Pagination;
@SessionAttributes("loginUser")

@Controller	
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 로고 클릭시 홈으로이동
	@RequestMapping("home.do")
	public String homeView() {
		
		return "home";
	}	
	
	// 근데 이렇게 하니까 로그아웃이 안된다.
	// 클래스 위에 @SessionAttributes("loginUser") 추가하고나서 기존 로그아웃이 안된다.
	// 로그아웃용 메소드 2
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {
		// 로그아웃 처리를 위해 커맨드 객체로 세션의 상태를 관리할 수 있는 SessionStatus 객체가 필요하다
		
		status.setComplete();
		
	return "home";
		// 다 되는거 확인 됐음 menubar.jsp 고고씽 해서 회원 가입 만들자!! (a 태그에 href에 urlmapping경로 추가)
	}	
	
		
	// 뷰 페이지로 이동시키는 컨트롤러 메소드 추가
	@RequestMapping("enrollView.do")
	public String enrollView() {
		
		return "member/memberJoin";
	}
	
	
	@RequestMapping("minsert.do")
	public String memberInsert(Member m, Model model, 
										@RequestParam("post") String post,
										@RequestParam("address1") String address1,
										@RequestParam("address2") String address2) {
		 System.out.println("member 출력 " + m);
		
		/*
		 *  1. 실행 해보면 한글 부분이 깨져 있는 것을 볼 수 있을 것이다.
		 *  스프링에서 제공하는 필터를 이용해서 요청시 전달되어 오는 값에 한글이 있을 경우 인코딩 처리하는 걸 추가해보자
		 *  (기존에 jsp/servlet떄는 필터 우리가 만들었었다.)
		 *  
		 *   web.xml로 가서 인코딩 필터 추가하고 다시 오자
		 *   
		 *  2. bCrypt로 압호화 처리 하기
		 *  	단방향 해슇 ㅏㅁ수는 암호화된 메세지를 수학적인 연산을 통해 암호화된 메세지인 다이제스트를 생성한다.
		 *  	원본 메세지로 암호화된 메세지를 구현하는 것은 쉽지만,
		 *  	암호화된 메세지로 원본 메세지를 구할 수 없어야 한다는 것이 단방향 암호화 처리.
		 *  	
		 *  	원본 메세지를 구할 수 있는 것은 양방향 (우리가 쓰고자 하는 bCrypt가 양방향에 해당)
		 *  
		 *  bCrypt : 해쉬 함수를 통한 암호화된 값 + 솔팅 기법(salting) + 다이제스트를 생성하는 시간 설정
		 *  
		 *  스프링은 이 bCrypt 암호화 방식을 스프링 시큐리티 모듈에서 제공하고 있다.
		 *  
		 *  bCrypt 암호화방식 ㅁ
		 *   1. salt + hashCode + salt + 시간설정
		 *   2. 양방향 암호화 (암호화 <-> 복호화) 가능
		 *   
		 *  pom.xml 에서 스프링 시큐리티 모듈을 추가해서 라이브러리를 repository에 다운 받고 오자.
		 *   
		 *   
		 *   
		 */
		 
		// 암호화된 값을 변수에다 기록하자!
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		// 이 암호화 클래스를 쓰려면 bean설정을 해야된다.
		// 1. spring-security.xml이라고 하는 bean설정을 만들자. spring bean ~~~.xml 로 생성
		// 2. web.xml에 1번에서 만든 spring-security.xml을 등록해주자
		
		System.out.println("encPwd : " +encPwd);
		
		// setter를 통해 Member 객체의 pwd 값 변경
		m.setUserPwd(encPwd);
		// 주소값들을 ',' 구분자로 합쳐주고 Member 객체의 address 값 변경
		m.setAddress(post + "," + address1 + "," + address2);
		System.out.println("add1 :" + address1);
		System.out.println("add2 :" + address2);
		// 이제 서비스로 넘기자 
		int result = mService.insertMember(m);
		
		System.out.println(result);
		if(result > 0) {
			return "home";
		} else {
			throw new MemberException("회원 가입 실패!!");
		}
		
	}

	// 뷰 페이지로 이동시키는 컨트롤러 메소드 추가
		@RequestMapping("loginView.do")
		public String enrollloginView() {
			
			return "member/loginView";
		}
		
		
	// 암호화 처리 후 로그인 부분
		@RequestMapping(value = "login.do", method = RequestMethod.POST)
		public String memberLogin(Member m, Model model, SessionStatus status) {
			/*
			 * matches() 메소드를 통해 우리는 암호화되어 있는 DB값과
			 * 사용자가 입력한 비밀번호를 비교할 수 있다.
			 * 당연히 일치하면 로그인 성공!, 실패하면 로그인실패!
			 */
			
			// 로그아웃 두번 클릭해야 로그아웃 될때 로그인에서 setComplete() 실행 해주면 된다.
			// status.setComplete();
			
			Member loginUser = mService.loginMember(m);
									// matches 안에서 긁어온 암호화된 녀석이랑 사용자가 입력한 녀석이랑 비교해준다.
			if(bcryptPasswordEncoder.matches(m.getUserPwd(),loginUser.getUserPwd())) {
				model.addAttribute("loginUser", loginUser);
			}else {
				throw new MemberException("로그인실패");
			}
			return "home";
		}
		
		// ---------------------이제 로그인/ 로그아웃, 회원가입은 완벽하게 끝냈다!--------------------------
		
		// 그럼 이제 로그인 이후에 자신의 정보를 보고 수정하는 페이지를 만들자
		// menubar에서 myinfo.do로 넘어오니까..
		
		@RequestMapping("myinfo.do")
		public String myInfoView() {
			
			return "member/mypage";		// mypage.jsp 만들자.
		}
		
		
		// 회원정보 수정
		@RequestMapping("mupdate.do")
		public String memberUpdate(Member m, Model model, @RequestParam("post") String post,
														  @RequestParam("address1") String addr1,
														  @RequestParam("address2") String addr2) {
			
			m.setAddress(post + "," + addr1 + "," + addr2);
			
			int result = mService.updateMember(m);
			
			if(result > 0) {
				model.addAttribute("loginUser" , m);
				
			} else {
				throw new MemberException("수정 실패!!");
			}
			
			return "home";
		}
		
		
		// 회원탈퇴
		@RequestMapping("mdelete.do")
		public String memberDelete(HttpSession session, String userId) {
			
			int result = mService.deleteMember(userId);
			if(result > 0) {
				// session.invalidate();
				
				return "redirect:logout.do";
				// 알아서 로그아웃을 해주는 메소드를 활용하자!!
			}else {
				throw new MemberException("탈퇴 실패!");
			}
			
		}
		
		@RequestMapping("memberLookup.do")
		public ModelAndView boardList(ModelAndView mv, @RequestParam(value="page", required=false) Integer page) {
			
			// 마이바티스 때 했던 PageInfo의 Pagination을 그대로 쓰자.
			
			// 페이지의 정보 없으면 디폴트 1로
			int currentPage = 1; 
			
			if(page != null) {
				currentPage = page;
			}
			
			// 전체글 갯수 조회 
			int listCount = mService.getListCount();
			//System.out.println(listCount);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			ArrayList<Member> list = mService.selectList(pi);
			
			System.out.println(list);
			
			if(list != null && list.size() > 0) {	// 게시글이 있다면
				mv.addObject("list", list);
				mv.addObject("pi", pi);
				mv.setViewName("member/memberLookup");
			} else{		  
				throw new MemberException("회원 전체 조회 실패!!");
			}
			return mv;
		}
}
