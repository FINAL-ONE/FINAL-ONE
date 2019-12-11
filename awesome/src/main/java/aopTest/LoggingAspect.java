package aopTest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component	// 디폴트로 클래스명의 loggingAspect 
// 이미 PerformanceAOP를 할 때 aopTest폴더도 스캔하라고 등록 해줘서 신경 안써도됨
@Aspect		// 라이브러리 깔아야 import됨
// servlet-context.xml로 가서 <aop:aspectj-autoproxy/> 추가해서 어노테이션으로 Aspect클래스 등록완료
// xml 방식과 @어노테이션 방식의 태그명이 다르다.  XMl :<aop:config> / @어노테이션 :  <aop:aspectj-autoproxy/>

public class LoggingAspect {
	
	@Before("execution(public * com.kh.awesome..*ServiceImpl.*(..))")
	public void before(JoinPoint joinPoint) {	// 어드바이스 (ServiceImpl에 화살표시된게 포인트컷)
		String signatureString = joinPoint.getSignature().getName();
							// getSignature() : 타겟메소드의 명을 뽑아낸다.
		System.out.println("@Before [ "+ signatureString + " ] 메소드 실행 전 수행" );
		
		for(Object arg : joinPoint.getArgs()) {
							//getArgs() : 타겟 메소드의 매개변수 뽑아낸다.
			System.out.println("@Before [ "+ signatureString + " ] 아규먼트 " + arg );
		}
				
	}
	
	
}
