package home.inside.supporter.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import home.inside.supporter.service.IQuestionService;
import home.inside.supporter.vo.QuestionVo;

@Controller
public class QuestionController {
	
	@Autowired
	IQuestionService service;
	
	
	//문의등록
	@RequestMapping(value="/user/question/insert.do", method = RequestMethod.GET)
	public String insertQuestionForm(HttpSession session) throws Exception {
		return "user/supporter/insertQuestion";
	}
	//목록조회
	@RequestMapping(value="/user/question/list.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String SelectAll(String type, String nickname, Model model) throws Exception {
		QuestionVo vo = new QuestionVo();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/supporter/qalist");
		mv.setViewName("user/supporter/questionlist");
		mv.addObject("title", vo.getTitle());
		mv.addObject("content", vo.getContent());
		mv.addObject("answer", vo.getAnswer());
		
		model.addAttribute("selectAll", service.selectAll(type, nickname));
		if(vo.getNickname() != "manager") {
		return "user/supporter/qaList"; 
		} else {
			return "user/supporter/questionlist";
		}
	}
	//내용확인
	@RequestMapping(value="/user/question/detail.do", method = RequestMethod.POST)
	public String SelectOne(int num, Model model) throws Exception {
		model.addAttribute("selectone", service.selectOne(num));
		return "user/supporter/questiondetail";
	}

}
