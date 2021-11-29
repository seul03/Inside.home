package home.inside.supporter.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import home.inside.supporter.service.ITalkService;
import home.inside.supporter.vo.TalkVo;

@Controller
public class mgrTalkController {

	@Autowired
	ITalkService service;
	
	
	//텍스트 채팅
	@RequestMapping(value="/manager/inside/talk.do", method = RequestMethod.POST)
	public String textSubmit(TalkVo talkVo) throws Exception {
		service.inputText(talkVo);
		return "manager/supporter/chat";
		
		
	

}

}
