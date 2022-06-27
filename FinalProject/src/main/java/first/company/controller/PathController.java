package first.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class PathController {
	//템플릿 변수
	//url경로에 변수를 넣어주는 기능
	//		/myinfo_poseidon.do		/myinfo_hong.do
	@GetMapping("/myinfo_{id}.do")
	public String myinfo(@PathVariable String id) {
		System.out.println("경로로 들어오는 id : " + id);
		
		return "";
	}
}
