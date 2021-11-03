package home.inside.supporter.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import home.inside.supporter.vo.QuestionCommand;
import home.inside.supporter.vo.QuestionVo;

@Repository
public interface IQuestionDao {
	
	public void insert(QuestionVo vo) throws Exception;
	public void insertcmd(QuestionCommand cmd) throws Exception;
	public void update(QuestionVo vo) throws Exception;
	public List<QuestionVo> selectAll(HashMap<String, Object> hm) throws Exception;
	public QuestionVo selectOne(int num) throws Exception;
	public void deleteQuestion(String nickname) throws Exception;

}
