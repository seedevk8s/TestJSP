package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class DispatcherServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private WebApplicationContext wc;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// 경로가 컴퓨터 마다 다르므로 다른방법으로 했음
		String path1 = config.getServletContext().getRealPath("/WEB-INF/applicationContext.xml");
		wc = new WebApplicationContext(path1);
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			//요청확인(주소값 읽기) -> request에 주소 있음
			String cmd=request.getRequestURI();
			
			cmd=cmd.substring(request.getContextPath().length()+1, cmd.lastIndexOf('.'));
			//Model클래스 가져옴
			Model model=wc.getBean(cmd);
			System.out.println("model: " + model);
			String jsp=model.hanlerRequest(request, response);
			String temp=jsp.substring(jsp.lastIndexOf('.')+1);
				

			//if (temp.equals("do")) {
			if (temp.startsWith("do")) {
				response.sendRedirect(jsp);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(jsp);
				rd.forward(request, response);
			}
		}

		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	
	
	
}























