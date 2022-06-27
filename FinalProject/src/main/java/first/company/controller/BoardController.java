package first.company.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import first.common.common.CommandMap;
import first.company.service.BoardService;

@Controller
public class BoardController {
	@Resource(name = "boardService")
	private BoardService boardService;
	
	@GetMapping("/index.do")
	public String index() {
		return "index";
	}
	
	@PostMapping("/login.do")
	public String login(CommandMap commandMap, HttpSession session) {
		System.out.println(commandMap.getMap());
		Map<String, Object> login = boardService.login(commandMap.getMap());
		System.out.println("결과값 : " + login);
		if(login != null) {
			session.setAttribute("u_id", login.get("u_id"));
			return "redirect:/board.do";
		} else {
			return "redirect:/login.do";
		}
	}
	
	@GetMapping("/login.do")
	public String login() {
		return "login";
	}
	
	@GetMapping("/main.do")
	public String main(CommandMap commandMap) {
		
		System.out.println(commandMap.getMap());
		return "main";
	}
	
	@GetMapping("/board.do")
	public ModelAndView boardList(CommandMap commandMap) {
		ModelAndView mv = new ModelAndView("board");
		List<Map<String, Object>> boardList = boardService.boardList(commandMap.getMap());
		mv.addObject("boardList", boardList);
		return mv;
	}
	
	@GetMapping("/board2.do")
	public String board2() {
		return "board2";
	}
	
	//json형식으로 출력하기
	@PostMapping(value = "/boardAjax.do", produces="text/plain; charset=UTF-8")
	@ResponseBody
	public String board2(CommandMap commandMap) {
		System.out.println("요청이 들어왔습니다.");
		//ModelAndView mv = new ModelAndView("board2");
		
		int pageNo = 1;
		if(commandMap.containsKey("pageNo")) {
			pageNo = Integer.parseInt((String) commandMap.get("pageNo"));
		}
		commandMap.put("pageNo", pageNo);
		
		List<Map<String, Object>> boardList = boardService.boardList(commandMap.getMap());
		//mv.addObject("boardList", boardList);
		
		JSONObject json = new JSONObject();
		json.put("test", "test1");
		json.put("pageNo", commandMap.get("pageNo"));
		json.put("list", boardList);
		
		System.out.println(json.toJSONString());
		
		return json.toJSONString();
	}
	
}
