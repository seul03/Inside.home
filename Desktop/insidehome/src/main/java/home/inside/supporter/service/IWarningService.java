package home.inside.supporter.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import home.inside.supporter.vo.WarningVo;

@Service
public interface IWarningService {
	
	public void insertWarning(WarningVo vo, HttpSession session) throws Exception;
	public int selectCount(String nickname) throws Exception;
	public void deleteWarning(String nickname) throws Exception;
}
