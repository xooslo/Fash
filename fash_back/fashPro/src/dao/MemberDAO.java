package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;

public class MemberDAO {
	
	public ArrayList<String> getMemberList(){
		ArrayList<String> list = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select id from member";
		
		con = JDBCUtil.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(rs.getString("id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, pstmt, rs);
		}
		
		return list;
	}
	
	public int insertMember(String name, String userId, String userPwd, String pwdCk, String email, String gender, String tel, String address) {
		int n = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?, ?)";
		
		con = JDBCUtil.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, userId);
			pstmt.setString(3, userPwd);
			pstmt.setString(4, pwdCk);
			pstmt.setString(5, email);
			pstmt.setString(6, gender);
			pstmt.setString(7, tel);
			pstmt.setString(8, address);
			n = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, pstmt);
		}
		return n;
	}
	
	public int updateMember(String userId, String userPwd) {
		int n = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "update member set pwd=? where id=?";
		
		con = JDBCUtil.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userPwd);
			pstmt.setString(2, userId);
			n = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, pstmt);
		}
		return n;
	}
	
	public int deleteMember(String userId) {
		int n = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "delete from member where id=?";
		
		con = JDBCUtil.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userId);
			n = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, pstmt);
		}
		return n;
	}
	
	public boolean getMemberPWD(String id, String pwd){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select pwd from member where id=?";
		boolean result = false;
		
		con = JDBCUtil.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(pwd.equals(rs.getString("pwd")));
					result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, pstmt, rs);
		}
		return result;
	}
}
