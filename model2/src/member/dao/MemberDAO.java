// DAO(Data Access Object)

package member.dao;

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import member.model.MemberDTO;

public class MemberDAO {

	// 싱글톤 : 객체 생성을 한번만 수행 하는것.
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	// 컨넥션풀에서 컨넥션을 구해오는 메소드
	private Connection getConnection() throws Exception{
		Context init = new InitialContext();
  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl");
  		return ds.getConnection();
	}
	
	// 회원가입
	public int insert(MemberDTO member) {
		int result = 0;
		
		
		return result;
	}
	
	
	
}
