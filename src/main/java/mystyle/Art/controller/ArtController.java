package mystyle.Art.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArtController {
	
	@RequestMapping("/")
	public ModelAndView showHome() {
		
		return new ModelAndView("home");
		
	}
	
	@RequestMapping("/result")
	public ModelAndView showResult() {
		
		return new ModelAndView("result");
	}

}
