package home.inside.supporter.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import home.inside.supporter.repository.IQuestionDao;
import home.inside.supporter.vo.QuestionCommand;
import home.inside.supporter.vo.QuestionVo;

@Service
public class QuestionServiceImpl implements IQuestionService {
	
	@Autowired
	IQuestionDao dao;
	
	//qa등록
	@Override
	public void insert(QuestionVo vo) throws Exception {
		dao.insert(vo);
	}
	//고객문의등록
	@Override
	public void insertcmd(QuestionCommand cmd) throws Exception {
		dao.insertcmd(cmd);
	}
	//수정(고객문의 답변, qa수정)
	@Override
	public void update(QuestionVo vo) throws Exception {
		dao.update(vo);
	}
	//목록조회
	@Override
	public List<QuestionVo> selectAll(String type, String nickname) throws Exception {
		HashMap<String, Object> hm =  new HashMap<>();
   	    hm.put("type", type);
        hm.put("nickname", nickname);
      
		return dao.selectAll(hm);
	}
	//내용확인
	@Override
	public QuestionVo selectOne(int num) throws Exception {
		return dao.selectOne(num);
	}
	//탈퇴시
	@Override
	public void deleteQuestion(String nickname) throws Exception {
		dao.deleteQuestion(nickname);
	}


}
