package org.codelabor.example.helloworld.web.view;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.xml.MarshallingView;

/**
 * @author Sang Jae Shin
 *
 */
public class HelloWorldXmlView extends MarshallingView {

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.springframework.web.servlet.view.xml.MarshallingView#
	 * renderMergedOutputModel(java.util.Map,
	 * javax.servlet.http.HttpServletRequest,
	 * javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		super.renderMergedOutputModel(model, request, response);
	}

}
