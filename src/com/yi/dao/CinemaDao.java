package com.yi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yi.jdbc.JDBCUtil;
import com.yi.model.CinemaInfo;

public class CinemaDao {
	private static final CinemaDao dao = new CinemaDao();
	
	public static CinemaDao getInstance() {
		return dao;
	}
	private CinemaDao() {
		
	}
	//insertCinema
	public void insertCinema(Connection conn, CinemaInfo cinema) throws SQLException {
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into cinema_info values (null, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cinema.getTitle());
			pstmt.setString(2, cinema.getContent());
			pstmt.setString(3, cinema.getFile());
			pstmt.setString(4, cinema.getTime());
			pstmt.executeUpdate();
		} finally {
			JDBCUtil.close(pstmt);
		}
	}
	//selectListByAll
	public List<CinemaInfo> selectListByAll(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from cinema_info";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<CinemaInfo> list = new ArrayList<>();
			while(rs.next()) {
				CinemaInfo cinema = new CinemaInfo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				list.add(cinema);
			}
			return list;
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
	}
	//selectCinemaByNo
	public CinemaInfo selectCinemaByNo(Connection conn, CinemaInfo cinema) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from cinema_info where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cinema.getNo());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				CinemaInfo cinema1 = new CinemaInfo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				return cinema1;
			}
			return null;
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
	}
}
