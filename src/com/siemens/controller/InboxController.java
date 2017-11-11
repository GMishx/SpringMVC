package com.siemens.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 * inbox.html -> Dispatcher -> dispatcher-servlet.xml -> InboxController
 * 
 * @author Z003U7PX
 *
 */
public class InboxController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// Business Logic
		// ModelAndView contains model objects and view pages
		System.out.println("InboxController: handleRequest");

		String message = "From Inbox Controller";
		// First @param: view (html/jsp)
		// Second @param: key for object
		// Third @param: object to pass
		ModelAndView mv = new ModelAndView("inbox", "messageKey", message);
		return mv;
	}

}
