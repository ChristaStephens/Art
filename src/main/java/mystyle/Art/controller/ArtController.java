package mystyle.Art.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArtController {
	
	
	//need to create a dao of the users name to show on the home page
	//(page with pictues to say (hi "tom" choose these pictures below
	//the below params help communicating between the jsp, dao and controller
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
	
	//need to create a dao of the users choices then the expression 
	//language can be used to output the users information onto the 
	//jsp
	@RequestMapping("/result")
	public ModelAndView showResult(@RequestParam (name = "result", required = false) String result) {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("result", result);
		return mv;
	}
	
	


}
