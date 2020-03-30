package com.yi.handler;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yi.dao.CinemaDao;
import com.yi.jdbc.JDBCUtil;
import com.yi.model.CinemaInfo;
import com.yi.mvc.CommandHandler;

public class CinemaTimeHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Connection conn = null;
		try {
			conn = JDBCUtil.getConnection();
			CinemaDao dao = CinemaDao.getInstance();
			List<CinemaInfo> list = dao.selectListByAll(conn);
			req.setAttribute("list", list);
			
			return "/WEB-INF/view/cgv_time.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}

}
