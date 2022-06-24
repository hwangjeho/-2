package first.company.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoronaController {
	
	
	@GetMapping("/corona.do")
	public String corona() throws IOException {
		StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1790387/covid19CurrentStatusKorea/covid19CurrentStatusKoreaJason");
		String serviceKey = "vbU228Siu2sd29G4M9QUcXXlv8e%2BUiT%2BzeeSmyr08Qu%2BxagpVqJyV0Tk3SJznaZ%2Bvj9%2F9FGAcqk7nKq5YgO7GA%3D%3D";
		urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=" + serviceKey);
		urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
	    urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
	    urlBuilder.append("&" + URLEncoder.encode("startCreateDt","UTF-8") + "=" + URLEncoder.encode("20200310", "UTF-8")); /*검색할 생성일 범위의 시작*/
	    urlBuilder.append("&" + URLEncoder.encode("endCreateDt","UTF-8") + "=" + URLEncoder.encode("20200315", "UTF-8")); /*검색할 생성일 범위의 종료*/
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("response code : " + conn.getResponseCode());
		BufferedReader rd;
		if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
		System.out.println("결과 : " + sb.toString());
		
		
		return "corona";
	}
	
	@GetMapping("/corona2.do")
	public ModelAndView corona2() throws IOException, ParseException {
		ModelAndView mv = new ModelAndView("corona");
		StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1790387/covid19CurrentStatusKorea/covid19CurrentStatusKoreaJason");
		String serviceKey = "vbU228Siu2sd29G4M9QUcXXlv8e%2BUiT%2BzeeSmyr08Qu%2BxagpVqJyV0Tk3SJznaZ%2Bvj9%2F9FGAcqk7nKq5YgO7GA%3D%3D";
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=" + serviceKey);
		
		URL url = new URL(urlBuilder.toString());
		
		JSONParser parser = new JSONParser();
		JSONObject jsonObject = (JSONObject) parser.parse(new InputStreamReader(url.openStream()));
		
		Map<String, Object> map = (Map<String, Object>) jsonObject.get("response");
		System.out.println("map으로 바꾼 결과 response : " + map);
		
		//map = (Map<String, Object>) map.get("result");
		JSONArray arr = (JSONArray) map.get("result");
		System.out.println("map으로 바꾼 결과 result : " + arr);
		System.out.println(arr.size());
		System.out.println(arr.get(0));
		
		map = (Map<String, Object>) arr.get(0);
		System.out.println("array에서 뽑은 map : " + map);
		
		mv.addObject("map", map);
		
		return mv;
		
	}
}
