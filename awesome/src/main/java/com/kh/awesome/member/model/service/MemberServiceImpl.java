package com.kh.awesome.member.model.service;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.awesome.member.model.dao.MemberDao;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.member.model.vo.PageInfo;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao mDao;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 로그인
	@Override
	public Member loginMember(Member m) {
		// 스프링 적용 이후 service 단에서 sqlSession을 생성하지 않는다.
		// dao에서 DI를 통해 sqlSession을 생성한다.
		return mDao.selectMember(m);
	}

	// 회원가입
	@Override
	public int insertMember(Member m) {
		//System.out.println("서비스impl");
		return mDao.insertMember(m);
	}

	// 회원정보 수정
	@Override
	public int updateMember(Member m) {

		return mDao.updateMember(m);
	}
	
	// 회원 탈퇴
	@Override
	public int deleteMember(String userId) {
		return mDao.deleteMember(userId);
	}

	@Override
	public int getListCount() {
		return mDao.getListCount();
	}

	@Override
	public ArrayList<Member> selectList(PageInfo pi) {
		return mDao.selectList(pi);
	}

	// 최근가입한 5명 뽑기
	@Override
	public ArrayList<Member> selectTopList() {
		return mDao.selectTopList();
	}

	// 회원조회시 포인트 수정
	@Override
	public int updatePointMember(Member m) {
		return  mDao.updatePointMember(m);
	}

	@Override
	public int checkIdDup(String id) {
		return mDao.checkIdDup(id);
	}

	@Override
	public String find_id(HttpServletResponse response, String email) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = mDao.find_id(email);
		
		if (id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return id;
		}
	}


	@Override
	public void find_pw(HttpServletResponse response, Member member) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 아이디가 없으면
		if(mDao.checkIdDup(member.getUserId()) == 0) {
			out.print("아이디, 이메일 입력란을 확인해주세요.");
			out.close();
		} 
		// 가입에 사용한 이메일이 아니면
		else if(!member.getEmail().equals(mDao.selectMember(member).getEmail())) {
			out.print("아이디, 이메일 입력란을 확인해주세요.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			member.setUserPwd(pw);
			send_mail(member, "find_pw");
			
			//암호화
			String encPwd = bcryptPasswordEncoder.encode(pw);
			member.setUserPwd(encPwd);
			// 비밀번호 변경
			mDao.update_pw(member);
			// 비밀번호 변경 메일 발송
			
			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}


	@Override
	public void send_mail(Member member, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com";
		String hostSMTPid = "hajjjjj2@naver.com";
		String hostSMTPpwd = "tj5133";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "hajjjjj2@naver.com";
		String fromName = "awesome";
		String subject = "회원님의 임시 비밀번호 입니다.";
		String msg = "<h1 style='color: red;' align='center'>*** AWESOME ***</h1><br>";
		
	 if(div.equals("find_pw")) {
			subject = "awesome 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += member.getUserId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += member.getUserPwd() + "</p><br></div>";
		}
		// 받는 사람 E-Mail 주소
		String mail = member.getEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587);

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}

	
	@Override
	public String send_mailCheck(String userEmail) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com";
		String hostSMTPid = "awesomefinalone@gmail.com";
		String hostSMTPpwd = "wkqk1212";

		String rNum = "";
		for (int i = 0; i < 5; i++) {
			 int random = (int) (Math.random() * 10);
			rNum += String.valueOf(random);
		}
		
		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "awesomefinalone@gmail.com";
		String fromName = "AWESOME";
		String subject = "AWESOME 이메일 인증 번호 입니다. ";
		String msg = "<b>*** AWESOME ***</b>";
				msg += "회원님의 이메일 인증번호:<b>" + rNum + "</b> <br>";
				msg += "이메일 인증칸에 인증번호를 입력해주세요!";
	
		
		
		// 받는 사람 E-Mail 주소
		String mail = userEmail;
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587);

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
			return rNum; 
			
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
			return "fail"; 
		}
	}
	
	@Override
	public int checkNickNameDup(String nickName) {
	
		return mDao.checkNickNameDup(nickName);
		
		
	}



	
}
