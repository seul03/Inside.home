package home.inside.supporter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import home.inside.supporter.repository.ITalkDao;
import home.inside.supporter.vo.TalkKeywordVo;
import home.inside.supporter.vo.TalkVo;

@Service
public class TalkServiceImpl implements ITalkService {

	@Autowired
	ITalkDao dao;
	
	public void inputText(TalkVo talkVo) throws Exception{
		dao.insert(talkVo);
	}
	public List<TalkVo> outputText(String nickname) throws Exception {
		return dao.selectAll(nickname);
	}
	public void deleteText(String nickname) throws Exception{
		dao.delete(nickname);
	}
	public List<TalkKeywordVo> selectKeyword() throws Exception {
		return dao.selectAll();
	}
	public TalkKeywordVo selectAnswer(String keyword) throws Exception {
		return dao.selectOne(keyword);
	}
}
