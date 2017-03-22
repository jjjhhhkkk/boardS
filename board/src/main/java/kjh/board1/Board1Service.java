package kjh.board1;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import kjh.common.FileVO;
import kjh.common.SearchVO;

//SQL문을 호출하여 처리한 후 반환하는 역할을 하는 것으로 
//selectBoard1List 이름(ID)을 가진 SQL 문을 찾아서 실행하게 된다.
//sqlSession은 Spring 설정(webapp/WEB-INF/applicationContext.xml)에서 
//지정된 SqlSessionTemplate을 사용하기 위한 변수(인스턴스)로 
//반환 데이터가 하나일 때는 selectOne을,
//2개 이상의 집합(Result Set, List)일 때는 selectList메소드를 사용한다.

@Service
public class Board1Service {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private DataSourceTransactionManager txManager;
	
	
	public List<?> selectBoardList(SearchVO param){
		return sqlSession.selectList("selectBoard1List",param);
	}
	public void insertBoard(BoardInput param,List<FileVO> filelist,String[] fileno){
//		sqlSession.insert("insertBoard1", param);
		
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);
		try{
		if(param.getBrdno()==null || "".equals(param.getBrdno())){
			sqlSession.insert("insertBoard1",param);
		}
		else{
			sqlSession.update("updateBoard1",param);
		}
		
		  if (fileno != null) {
              HashMap p = new HashMap();
              p.put("fileno", fileno) ;
              sqlSession.insert("deleteBoard4File", p);
          }

		
		for(FileVO f : filelist){
			f.setParentPK(param.getBrdno());
			sqlSession.insert("insertBoard1File",f);
		}
		txManager.commit(status);
		} catch (Exception ex) {
		    txManager.rollback(status);
		    throw ex;
		}      
		
	}
	public void updateBoard(BoardInput param){
		sqlSession.update("updateBoard1", param);
	}
	public BoardInput selectBoardOne(String param){
		return sqlSession.selectOne("selectBoard1One",param);
	}
	public void deleteBoardOne(String param){
		sqlSession.delete("deleteBoard1One",param);
	}
	public void updateBoard1Read(String param) {
	    sqlSession.update("updateBoard1Read", param);
	}
	public Integer selectBoardCount(SearchVO param) throws Exception {
	    return sqlSession.selectOne("selectBoard1Count", param);
	}

	 public List<BoardInput> selectBoard4FileList(String param) throws Exception {
			return sqlSession.selectList("selectBoard4FileList", param);
	    }


		
	
}
