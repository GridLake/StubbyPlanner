/*package stbplanner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import stbplanner.dto.AttractionDTO;

public class AttractionDAO {

	// Singleton
	private static AttractionDAO dao = null;

	private AttractionDAO() {}

	public static AttractionDAO getInstance() {
		if(dao == null) {
			dao = new AttractionDAO();
		}
		return dao;
	}

	// 글쓰기
	public int insert(Connection conn, AttractionDTO dto) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		// 1. 새 플래너
		if(dto.get???() == 0) {	// 새로 작성하는 플래너 or 이미 작성한 플래너 수정인지 확인하는 코드
			String sql =   "insert into 테이블명 ( "
					     + " 컬럼명~~~"
					     + ", 컬럼명~~~ )"
					     + " values "
					     + " ( 시퀀스명.nextval,  ?,?,?,? "	  // 필요에 따라 시퀀스 사용, ? 조절
					     + " , 시퀀스명.currval, ?,?,?,?  )"; // 필요에 따라 시퀀스 사용, ? 조절
			try {
				pstmt =  conn.prepareStatement(sql);
				pstmt.setString(1, dto.get???());
				pstmt.setString(2, dto.get???l());
				pstmt.setString(3, dto.get???());
				pstmt.setString(4, dto.get???());
				pstmt.setInt(5, dto.get???()));
				pstmt.setInt(6, dto.get???());
				pstmt.setString(7, dto.get???());
				pstmt.setString(8, dto.get??()); 
				result = pstmt.executeUpdate();
			}catch (SQLException e) { 
				e.printStackTrace();
			} finally {
				try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();}
				try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
			}
		} else {
			// 2. 수정 플래너
			String sql =   "update 테이블명 "
				     	 + " set 컬럼명 = ?, 컬럼명 = ?, 컬럼명 = ?, ..."
				     	 + " , 컬럼명 = ?, 컬럼명 = ?, 컬럼명 = ?, ..."	 // 필요에 따라 컬럼명 = ? 조절
				     	 + " where 컬럼명 = ? and 컬럼명 = ?"; 		 // 조건에 맞게 select 후 update
			try {
				pstmt =  conn.prepareStatement(sql);
				pstmt.setString(1, dto.get???());
				pstmt.setString(2, dto.get???l());
				pstmt.setString(3, dto.get???());
				pstmt.setString(4, dto.get???());
				pstmt.setInt(5, dto.get???()));
				pstmt.setInt(6, dto.get???());
				pstmt.setString(7, dto.get???());
				pstmt.setString(8, dto.get??()); 
				result = pstmt.executeUpdate();
				
			}catch (SQLException e) { 
				e.printStackTrace();
			} finally {
				try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();}
				try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
			}
		}
		
		return result;
	}
	
	public List<AttractionDTO> selectList(
			Connection conn){
		String sql =" select rownum rnum, num,writer,email,subject,pass, regdate,readcount,ref,step,depth,content,ip "
		        +  ", case when ( sysdate - regdate ) < 0.041667  then  'true'      else 'false'      end  new "
				+ " from replyboard16 "
				+" order by ref desc, step asc";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<AttractionDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			AttractionDTO dto = null;
			while(rs.next()) {
				dto =  new AttractionDTO();
				dto.setNum( rs.getInt("num") );
				dto.setWriter( rs.getString("writer"));
				dto.setEmail( rs.getString("email"));
				dto.setSubject( rs.getString("subject"));	
				dto.setReadcount( rs.getInt("readcount"));
				dto.setRegdate(rs.getDate("regdate"));
				
				Date regd = rs.getDate("regdate");
				System.out.println(  regd.toLocaleString() );
				
				dto.setIp( rs.getString("ip"));
				dto.setStep( rs.getInt("step"));
				dto.setDepth(rs.getInt("depth"));
				
				dto.setNewImg(new Boolean(rs.getString("new")));
				list.add(dto);
			}
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		return list;		
	}
	
	
	// 조회수 증가, 필요한지 아닌지는 아직 모름
	public int updateReadcount(Connection conn, int num) {
		String sql = "update 테이블명 "
				+" set readcount = readcount +1 "
				+" where num = ?";

		PreparedStatement pstmt = null;		
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			result = pstmt.executeUpdate();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			//try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		return result;
	}
 	
	
	// 얻어오기
	public AttractionDTO selectOne(Connection conn, int num) {
		String sql = "select * from 컬럼명 "
				+" where num = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		AttractionDTO dto = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				dto =  new AttractionDTO();

				dto.setNum( rs.getInt("num") );
				dto.setWriter( rs.getString("writer"));
				dto.setEmail( rs.getString("email"));
				dto.setSubject( rs.getString("subject"));	
				dto.setReadcount( rs.getInt("readcount"));
				dto.setRegdate(rs.getDate("regdate"));
				dto.setIp( rs.getString("ip"));
				dto.setStep( rs.getInt("step"));
				dto.setDepth(rs.getInt("depth"));

				dto.setRef(rs.getInt("ref"));
				dto.setPass(rs.getString("pass"));
				dto.setContent(rs.getString("content")); 

			}
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			//try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		return dto;
	}
}
*/