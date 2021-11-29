package home.inside.supporter.service;

import java.util.List;

import org.springframework.stereotype.Service;

import home.inside.supporter.vo.QuestionCommand;
import home.inside.supporter.vo.QuestionVo;

@Service
public interface IQuestionService {
	
	public void insert(QuestionVo vo) throws Exception;
	public void insertcmd(QuestionCommand cmd) throws Exception;
	public void update(QuestionVo vo) throws Exception;
	public List<QuestionVo> selectAll(String type, String nickname) throws Exception;
	public QuestionVo selectOne(int num) throws Exception;
	public void deleteQuestion(String nickname) throws Exception;

}
