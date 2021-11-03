package home.inside.supporter.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import home.inside.supporter.service.IQuestionService;
import home.inside.supporter.vo.QuestionVo;

@Controller
public class mgrQuestionController {

	@Autowired(required=true)
    IQuestionService service;
	
	
	//q&a등록
	@RequestMapping(value="/manager/question/insert.do", method=RequestMethod.GET)
	public String insertQuestionForm(HttpSession session) throws Exception {
		if(session == null) {
			return "manager/main";
		}else {		
		return "manager/supporter/insertQa";
	}
	}
	//q&a등록요청
	@RequestMapping(value="/manager/question/insert.do", method=RequestMethod.POST)
	public String insertQuestionSubmit(QuestionVo vo) throws Exception {
		service.insert(vo);
		return "manager/supporter/SelectAll";
	}
	//고객문의 수정(고객문의 답변등록, q&a 수정)
	@RequestMapping(value="/manager/question/update.do", method=RequestMethod.GET)
	public String updateQuestionForm(int num, Model model) throws Exception {
		QuestionVo vo = new QuestionVo();
		
		if(vo.getNickname() != "manager") {
			return "manager/supporter/UpdateQuestion";
		} else {
			return "manager/supporter/UpdateQa"; 
	}
	}
    //고객문의 수정(고객문의 답변등록, q&a 수정) 요청
	@RequestMapping(value="/manager/question/update.do", method=RequestMethod.POST)
	public String updateQuestionSubmit(QuestionVo vo) throws Exception {
		service.update(vo);
		if(vo.getNickname() != "manager") {
			return "manager/supporter/UpdateQuestion";
		} else {
			return "manager/supporter/UpdateQa"; 
	}
	}
	//목록조회(관리자 고객문의 목록, q&a목록)
	@RequestMapping(value="/manager/question/list.do", method=RequestMethod.POST)
	public String SelectAll(String asktype, String nickname, Model model) throws Exception {
		QuestionVo vo = new QuestionVo();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/supporter/qalist");
		mv.setViewName("manager/supporter/questionlist");
		mv.addObject("asktype", vo.getAskType());
		mv.addObject("title", vo.getTitle());
		mv.addObject("content", vo.getContent());
		mv.addObject("answer", vo.getAnswer());
		
		HashMap<String, Object> hashMap = new HashMap<>();
		hashMap.put("asktype", asktype);
		hashMap.put("nickname", nickname);
		
		model.addAttribute("selectAll", service.selectAll(asktype, nickname));
		
		if(nickname != "manager" && vo.getAnswer() == null) {
			return "manager/supporter/QuestionList";
		} else if(vo.getAnswer() != null) {
			return "forward:/user/supporter/selectAll";
		} else {
			return "manager/supporter/QaList";
		}
	}
	//내용확인
	@RequestMapping(value="/manager/question/detail.do", method=RequestMethod.POST)
	public String SelectOne(int num, Model model) throws Exception {
		return "manager/supporter/Questiondetail";
		

}

}
