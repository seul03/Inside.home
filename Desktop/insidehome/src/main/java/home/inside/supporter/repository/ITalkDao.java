package home.inside.supporter.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import home.inside.supporter.vo.TalkKeywordVo;
import home.inside.supporter.vo.TalkVo;

@Repository
public interface ITalkDao {

	public void insert(TalkVo vo) throws Exception;
	public List<TalkVo> selectAll(String nickname) throws Exception;
	public void delete(String nickname) throws Exception;
	public List<TalkKeywordVo> selectAll() throws Exception;
	public TalkKeywordVo selectOne(String keyword) throws Exception;
}
