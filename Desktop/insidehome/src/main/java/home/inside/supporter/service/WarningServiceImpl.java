package home.inside.supporter.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import home.inside.supporter.repository.IWarningDao;
import home.inside.supporter.vo.WarningVo;

@Service
public class WarningServiceImpl implements IWarningService{

	@Autowired
	IWarningDao dao;
	
	public void insertWarning(WarningVo vo, HttpSession session) throws Exception {
		dao.insert(vo, session);
	}
	public int selectCount(String nickname) throws Exception {
		return dao.selectCount(nickname);
	}
	public void deleteWarning(String nickname) throws Exception {
		dao.delete(nickname);
	}
	
	
}
