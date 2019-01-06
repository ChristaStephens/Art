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
	
	
	
	//mv.addobect means to output to the page!
//	public ModelAndView showSummary( @RequestParam ("name") String name, 
//			@RequestParam("last") String last,
//			@RequestParam("coffee") String coffee,
//			@RequestParam("bday") String bday,
//			@RequestParam("email") String email, 
//			@RequestParam (name ="updates", required= false) String updates, 
//			@RequestParam (name ="sal", required= false) String sal){
//		ModelAndView mv = new ModelAndView("summary");
//		mv.addObject("name", name);
//		mv.addObject("last", last);
//		mv.addObject("bday", bday);
//		mv.addObject("coffee", coffee);
//		mv.addObject("email", email);
//		mv.addObject("updates", updates);
//		mv.addObject("sal", sal);
//		//for updates to show or not show we need to say "name updates, req false"
//				//to say that's it's not required to put int a check mark
//		return mv;
//	}

}
