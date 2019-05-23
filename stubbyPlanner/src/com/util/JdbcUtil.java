package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtil {
	/*
	.close() 하는 작업들은 try catch 로 묶어줘야 하는데 코딩할때마다 적기에는
	불편하므로(코딩간략화 - 유지보수) 미리 코딩을 해놓는다.
	 */
	public static void close(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException ex) {
			}
		}
	}
	
	public static void close(Statement stmt) {
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException ex) {
			}
		}
	}
	
	public static void close(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException ex) {
			}
		}
	}

	public static void rollback(Connection conn) {
		if (conn != null) {
			try {
				conn.rollback();
			} catch (SQLException ex) {
			}
		}
	}
}
