package com.mycompany.myshop;
/*MVC:Model(데이터베이스, Dao) View(화면) Controller(화면-DB 중개자)*/

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	// @RequestMapping: 컨트롤러의 메소드가 어떤 URL 패턴, HTTP 메소드(GET, POST 등), 미디어 타입 등에 대응해야 하는지를 정의
	// value: 이 속성은 요청 경로(또는 URL 패턴)를 지정. '/'의 의미 -> http://localhost:8080/myshop
	// method: 이 속성은 HTTP 메소드를 지정. RequestMethod.GET은 HTTP GET 요청을 처리하도록 설정
	public String home() {//"home"이 문자열이라 String

		return "home";//home.jsp 화면이 열림
		//servlet-context.xml의 InternalResourceViewResolver가 /WEB-INF/views/home.jsp로 이동시켜줌
	}
}
