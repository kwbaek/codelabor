package org.codelabor.example.emp.struts.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.codelabor.example.emp.dtos.EmpDTO;

public class EmpReadAction extends BaseEmpAction {

	public EmpReadAction() {
		super();
	}

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		EmpDTO empDTO = empManager.selectEmp(Integer.parseInt(request
				.getParameter("id")));
		request.setAttribute("empDTO", empDTO);
		return mapping.findForward("success");
	}
}
