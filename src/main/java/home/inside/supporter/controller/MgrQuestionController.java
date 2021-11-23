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
public class MgrQuestionController {

	@Autowired(required=true)
    IQuestionService service;
	
	//q&a등록
	@RequestMapping(value="/manager/question/insertForm.do")
	public String insertQuestionForm(HttpSession session) throws Exception {
   
		return "manager/supporter/insertQa";
	}
	
	//q&a등록요청
	@RequestMapping(value="/manager/question/insert.do", method =  RequestMethod.POST)
	public String insertQuestionSubmit(QuestionVo vo, HttpSession session) throws Exception {
		 String nickname = (String) session.getAttribute("loginInside");
		 vo.setNickname("manager");
		 
		String title = vo.getTitle();
		String content = vo.getContent();

		service.questioninsert(vo);
		if(title==null || title.trim().isEmpty() || content==null || content.trim().isEmpty()) {
			return "manager/supporter/insertQa";
		}else {
			return "redirect:/manager/question/list.do";
		}
	}
	//고객문의 수정(고객문의 답변등록, q&a 수정)
	@RequestMapping(value="/manager/question/updateForm.do", method=RequestMethod.GET)
	public String updateQuestionForm(Model model, int num) throws Exception {
		QuestionVo vo = new QuestionVo();
		QuestionVo data = service.questionupdate(vo);
		String askType = data.getAskType();

		vo.getNum();
		vo.setNickname("seoul");
		askType = "customer";
		if(askType.equals("customer")) {
			service.questionupdate(vo);
			model.addAttribute("num", num);
			return "manager/supporter/updateQuestioin";
		} else {
			service.questionupdate(vo);
			return "manager/supporter/updateQa"; 
	}
	}
    //고객문의 수정(고객문의 답변등록, q&a 수정) 처리
	@RequestMapping(value="/manager/question/update.do")
	public String updateQuestionSubmit(QuestionVo vo, HttpSession session) throws Exception {
		String nickname = (String) session.getAttribute("loginInside");
        System.out.println("/manager/question/update.do 들");
		vo.getNum();
    	vo.setNickname("seoul");
		vo.setAskType("customer");
		String answer = vo.getAnswer();
		String askType = vo.getAskType();
		service.questionupdate(vo);

		if(answer!=null || askType.equals("customer")) {
			 return "manager/supporter/updateQuestion";
		}else {
			return  "redirect:/manager/question/list.do";
		}
	}

	//목록조회(관리자 고객문의 목록, q&a목록)
	@RequestMapping(value="/manager/question/list.do")
	public String SelectAll(String askType, String nickname, Model model, HttpSession session, QuestionVo vo) throws Exception {

		String answer = vo.getAnswer();
        askType = "customer";
        nickname = "seoul";
        int num = vo.getNum();
        
		if(askType.equals("customer")) {		
			List<QuestionVo> list = service.questionselectall(askType, nickname);
			model.addAttribute("num", num);
			model.addAttribute("list",  list);
			return "manager/supporter/questionList";
		} else {
			askType ="member";
			List<QuestionVo> list = service.questionselectall(askType, "manager");
			model.addAttribute("list", list);
			return "manager/supporter/qaList";
		}
	}
	//내용확인
	@RequestMapping(value="/manager/question/detail.do")
	public String SelectOne(int num, Model model) throws Exception {
		service.questionselectone(num);
		QuestionVo det = service.questionselectone(num);
		model.addAttribute("detail", det);
		return "manager/supporter/questionDetail";
		

}

}
