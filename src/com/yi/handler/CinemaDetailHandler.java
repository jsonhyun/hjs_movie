package com.yi.handler;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yi.dao.CinemaDao;
import com.yi.jdbc.JDBCUtil;
import com.yi.model.CinemaInfo;
import com.yi.mvc.CommandHandler;

public class CinemaDetailHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int no = Integer.parseInt(req.getParameter("no"));

		Connection conn = null;
		
		try {
			conn = JDBCUtil.getConnection();
			CinemaDao dao = CinemaDao.getInstance();
			CinemaInfo cinemaNo = new CinemaInfo(no, null, null, null, null); 
			CinemaInfo cinema = dao.selectCinemaByNo(conn, cinemaNo);
			
			req.setAttribute("cinema", cinema);
			
			return "/WEB-INF/view/cinemaDetail.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}

}
