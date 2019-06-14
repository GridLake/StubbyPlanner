package stbplanner.personal.service;

import java.sql.Connection;

import com.util.ConnectionProvider;

import stbplanner.personal.dao.MyPageDAO;
import stbplanner.personal.model.MyPageDTO;

public class MyPageService {
	
	private MyPageDAO myPageDao = new MyPageDAO();
	
	
	public void countFriend() {

	}
	public MyPageDTO getMyPage(String member_id) {

		try(Connection conn = ConnectionProvider.getConnection()){
			
			MyPageDTO myPage = myPageDao.selectMyPage(conn, member_id);
			
			
	
			return myPage;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}

	}

	public int getMyFriend(String member_id) {

		try(Connection conn = ConnectionProvider.getConnection()){
			
			int myFriend = myPageDao.countFriend(conn, member_id);
			
			
	
			return myFriend;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}

	}
	
}
