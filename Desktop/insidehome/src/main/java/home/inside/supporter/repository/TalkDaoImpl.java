package home.inside.supporter.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import home.inside.supporter.vo.TalkKeywordVo;
import home.inside.supporter.vo.TalkVo;

@Repository
public class TalkDaoImpl implements ITalkDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
    @Override
	public void insert(TalkVo vo) throws Exception{
		sqlSessionTemplate.insert("talk.insert", vo);
	}
    @Override
	public List<TalkVo> selectAll(String nickname) throws Exception {
		return sqlSessionTemplate.selectList("talk.selectall", nickname);
	}
    @Override
	public void delete(String nickname) throws Exception {
		sqlSessionTemplate.delete("talk.delete", nickname);
	}
    @Override
	public List<TalkKeywordVo> selectAll() throws Exception {
		return sqlSessionTemplate.selectList("talk.selectkey");
	}
    @Override
	public TalkKeywordVo selectOne(String keyword) throws Exception{
		return sqlSessionTemplate.selectOne("talk.selectone", keyword);
	}

}
