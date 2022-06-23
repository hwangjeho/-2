package first.company.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> boardList(Map<String, Object> map) {
		return selectList("board.boardList", map);
		
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> login(Map<String, Object> map) {
		
		return (Map<String, Object>) selectOne("board.login", map);
	}

}
