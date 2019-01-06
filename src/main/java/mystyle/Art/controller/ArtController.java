package mystyle.Art.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArtController {
	
	@RequestMapping("/reg")
	public ModelAndView showHome( @RequestParam (name = "name", required = false) String name, 
			@RequestParam (name = "last", required = false) String last,
			@RequestParam (name = "email", required = false) String email){
		
		ModelAndView mv = new ModelAndView("reg");
	mv.addObject("name", name);
	mv.addObject("last", last);
	mv.addObject("email", email);
	
		return mv;	
	}
	
	
	
	@RequestMapping("/")
	public ModelAndView showHome() {
	ModelAndView mv = new ModelAndView ("home");
	return mv;
	}
	
	
	@RequestMapping("/result")
	public ModelAndView showResult(@ RequestParam ("result") String result) {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("result", result);
		return mv;
	}
	
	


}
