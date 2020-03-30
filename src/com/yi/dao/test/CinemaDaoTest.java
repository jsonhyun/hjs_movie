package com.yi.dao.test;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.yi.dao.CinemaDao;
import com.yi.jdbc.DBCPInit;
import com.yi.jdbc.JDBCUtil;
import com.yi.model.CinemaInfo;

public class CinemaDaoTest {
	Connection conn = null;
	CinemaDao dao = null;
	
	@Before
	public void before() {
		try {
			DBCPInit dbcpInit = new DBCPInit();
			dbcpInit.init();
			conn = JDBCUtil.getConnection();
			dao = CinemaDao.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@After
	public void after() {
		JDBCUtil.close(conn);
	}
	
	@Test
	public void testInsert() throws SQLException {
		CinemaInfo cinema = new CinemaInfo(0, "test", "test", "test.jps", "test");
		dao.insertCinema(conn, cinema);
	}
	
	@Test
	public void testList() throws SQLException {
		List<CinemaInfo> list = dao.selectListByAll(conn);
		for(CinemaInfo cinema : list) {
			System.out.println(cinema);
		}
	}
	
	@Test
	public void testCinema() throws SQLException {
		CinemaInfo cinemaNo = new CinemaInfo(2, null, null, null, null);
		CinemaInfo cinema = dao.selectCinemaByNo(conn, cinemaNo);
		System.out.println(cinema);
	}

}
