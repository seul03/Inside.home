package home.inside.supporter.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import home.inside.supporter.service.IQuestionService;
import home.inside.supporter.vo.QuestionVo;

@Controller
public class QuestionController {

	@Autowired
	IQuestionService service;

	// 문의등록 폼 요청
	@RequestMapping(value = "/user/question/insertForm.do")
	public String insertQuestionForm(HttpSession session, Model model, QuestionVo vo) throws Exception {
      
		return "user/supporter/insertQuestion";
	}

	// 문의 등록 처리
	@RequestMapping(value = "/user/question/insert.do", method = RequestMethod.POST)
	public String insertQuestionSubmit(QuestionVo vo, HttpSession session) throws Exception{
		String nickname = (String) session.getAttribute("loginInside");
		vo.setAskType("customer");
		vo.setNickname("seoul");
		String title = vo.getTitle();
		String content = vo.getContent();
		System.out.println("userinsert:" + vo.toString());
		service.questioninsert(vo);
		if(title==null || title.trim().isEmpty() || content==null || content.trim().isEmpty()) {
			
			return "user/supporter/insertQuestion";
		}else {
			return "redirect:/user/question/list.do";
		}
	}
	// qa목록 확인
	@RequestMapping(value = "/user/question/qalist.do")
	public String SelectQA(String askType, Model model, QuestionVo vo, HttpSession session) throws Exception {
		// String nickname = (String) session.getAttribute("loginInside");		
		String nickname = "manager";
		List<QuestionVo> list = service.questionselectall("board", nickname);	
		model.addAttribute("list", list);
		System.out.println("userselect:" + vo.toString());
		return "user/supporter/qaList";
	}

	// question목록확인(내 문의)
	@RequestMapping(value = "/user/question/list.do")
        public String SelectQuestion(String askType,Model model, HttpSession session) throws Exception {
		/* 회원이 고객문의페이지(내꺼)를 요청할 경우, asktype 에 customer 를넣어서 넘겨준다.(hidden) */		
		String nickname = (String) session.getAttribute("loginInside");
		askType = "customer";
		nickname = "seoul";
		List<QuestionVo> list = service.questionselectall(askType , nickname);
		model.addAttribute("list", list);
		return "user/supporter/questionList";
	}
        
	// 내용확인
	@RequestMapping(value = "/user/question/detail.do")
	public String SelectOne(int num, Model model) throws Exception {
		QuestionVo det = service.questionselectone(num);
		model.addAttribute("detail", det);
		return "user/supporter/questionDetail";
	}

}
