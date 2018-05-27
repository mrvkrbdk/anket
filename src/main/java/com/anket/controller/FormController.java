package com.anket.controller;
import com.anket.model.FormEntity;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class FormController {

	 @RequestMapping(value = "/FormProcess", method = RequestMethod.POST)
	  public ModelAndView addvalues(HttpServletRequest request,HttpServletResponse response,
			  @ModelAttribute("FormEntity") FormEntity fe) {
		 
		 return new ModelAndView("FormSuccess");
	 }

}
