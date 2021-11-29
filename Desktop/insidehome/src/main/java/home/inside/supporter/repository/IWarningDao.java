package home.inside.supporter.repository;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;

import home.inside.supporter.vo.WarningVo;

@Repository
public interface IWarningDao {

	public void insert(WarningVo vo, HttpSession session) throws Exception;
	public int selectCount(String nickname) throws Exception;
	public void delete(String nickname) throws Exception;
}
