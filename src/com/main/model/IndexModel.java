package com.main.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class IndexModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String strPage = req.getParameter("page");
		if(strPage == null) {
			strPage = "1";
		}
		
		
		req.setAttribute("jsp", "main.jsp");
		
		
		return "main/index.jsp";
	}

}

















