package home.inside.supporter.service;

import java.util.List;

import org.springframework.stereotype.Service;

import home.inside.supporter.vo.TalkKeywordVo;
import home.inside.supporter.vo.TalkVo;

@Service
public interface ITalkService {

	public void inputText(TalkVo talkVo) throws Exception;
	public List<TalkVo> outputText(String nickname) throws Exception;
	public void deleteText(String nickname) throws Exception;
	public List<TalkKeywordVo> selectKeyword() throws Exception;
	public TalkKeywordVo selectAnswer(String keyword) throws Exception;
	
}
