package main.java.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelpController {


	@RequestMapping(value = "/index.html")
    public ModelAndView help() {
		ModelAndView mov = new ModelAndView("help-api");
		
		return mov;
    }
}
