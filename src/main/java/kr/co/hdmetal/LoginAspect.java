package kr.co.hdmetal;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Aspect
@Component
public class LoginAspect {
	@Around(value="@annotation(kr.co.hdmetal.LoginAOP)")
	public Object loginCheck(ProceedingJoinPoint joinPoint) throws Throwable{
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		Object check = request.getSession().getAttribute("login");
		if (check != null) {
			Object obj = joinPoint.proceed();
			return obj;
		} else {
			return "error/fail";
		}

	}
}
