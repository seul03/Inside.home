package home.inside.supporter.repository;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import home.inside.supporter.vo.WarningVo;

@Repository
public class WarningDaoImpl implements IWarningDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insert(WarningVo vo, HttpSession session) throws Exception {
		sqlSessionTemplate.insert("insert", vo);
	}
	@Override
	public int selectCount(String nickname) throws Exception {
		return sqlSessionTemplate.selectOne("selectcount", nickname);
	}
	@Override
	public void delete(String nickname) throws Exception {
		sqlSessionTemplate.delete("delete", nickname);
	}
}
