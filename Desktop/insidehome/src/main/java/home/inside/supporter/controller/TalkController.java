package home.inside.supporter.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import home.inside.supporter.service.ITalkService;
import home.inside.supporter.vo.TalkVo;

@Controller
public class TalkController {
	
	@Autowired
	ITalkService service;
	
	public String keywordForm(HttpSession session, Model model) throws Exception {
		return "/user/supporter/talk";
	}
	
	//키워드 문의
	@RequestMapping(value="/user/inside/talk.do", method = RequestMethod.POST)
	public String keywordSubmit(String keyword) throws Exception {
		service.selectKeyword();
		return "/user/supporter/talk";
	}
	
	//텍스트문의
	@RequestMapping(value="/user/inside/texttalk.do", method = RequestMethod.POST)
	public String textSubmit(TalkVo talkVo) throws Exception {
		service.inputText(talkVo);
		return "/user/supporter/texttalk";
	}
	

}
