package first.company.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import first.company.dao.BoardDAO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="boardDAO")
	private BoardDAO boardDAO;
	
	@Override
	public List<Map<String, Object>> boardList(Map<String, Object> map) {
		return boardDAO.boardList(map);
	}

	@Override
	public Map<String, Object> login(Map<String, Object> map) {
		return boardDAO.login(map);
	}

}
