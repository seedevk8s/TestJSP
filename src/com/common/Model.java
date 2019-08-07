package com.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Model {
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res)
			throws Exception;
}
