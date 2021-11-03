package home.inside.supporter.controller;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.ServletRequestAttributes;

import home.inside.supporter.service.IWarningService;
import home.inside.supporter.vo.WarningVo;

@Controller
public class WarningController {

	@Autowired
	IWarningService service;
	
	//신고 접수작성
	@RequestMapping(value="/user/warning/insert.do", method=RequestMethod.GET)
	public String insertwarningForm(HttpSession session) throws Exception {
		if(session != null) {
			return "user/supporter/warning";
		} else
			return "main";
	}
	//신고 접수요청
	@RequestMapping(value="/user/warning/insert.do", method=RequestMethod.POST)
	public String insertwariningSubmit(WarningVo vo, HttpSession session) throws Exception {

		String nickname = vo.getNickname();
        nickname = (String) session.getAttribute("nickname"); 
        
		if (service.selectCount(nickname) == 3) {
			return "forward:/IPointService/insertPoint.do";
		} else if (service.selectCount(nickname) == 5) {
			return "forward:/dropMember.do";
		}
		return "forward:/IMemberService/updateWarning";

	}
	@RequestMapping(value="/user/map.do", method={RequestMethod.GET, RequestMethod.POST})
	public String map() throws Exception {

		return "user/main/load";

	}
}

