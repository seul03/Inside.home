package home.inside.supporter.repository;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import home.inside.supporter.vo.QuestionCommand;
import home.inside.supporter.vo.QuestionVo;

@Repository
public class QuestionDaoImpl implements IQuestionDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	//qa등록
	@Override
	public void insert(QuestionVo vo) throws Exception {
		sqlSessionTemplate.insert("insert", vo);
	}
	//고객문의 문의등록
	@Override
	public void insertcmd(QuestionCommand cmd) throws Exception {
		sqlSessionTemplate.insert("insertcmd", cmd);
	}
	//수정(고객문의 답변, qa수정)
	@Override
	public void update(QuestionVo vo) throws Exception {
		sqlSessionTemplate.update("update", vo);
	}
	//목록조회
	@Override
	public List<QuestionVo> selectAll(HashMap<String, Object> hm) throws Exception {
		return sqlSessionTemplate.selectList("selectall", hm);
	}
	//내용확인
	@Override
	public QuestionVo selectOne(int num) throws Exception {
		return sqlSessionTemplate.selectOne("selectone", num);
	}
	//회원탈퇴
	@Override
	public void deleteQuestion(String nickname) throws Exception {
		sqlSessionTemplate.delete("deletequestion", nickname);
	}
}
