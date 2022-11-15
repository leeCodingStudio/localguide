package com.localGuide.app.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localGuide.app.Execute;
import com.localGuide.app.Result;
import com.localGuide.app.admin.dao.AdminDAO;

public class DeleteGuideController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		int guideId = Integer.valueOf(req.getParameter("guideId"));
		AdminDAO adminDAO = new AdminDAO();
		
		adminDAO.deleteGuide(guideId);
		result.setRedirect(true);
		result.setPath("/admin/guide.admin");
		return result;
	}

}
