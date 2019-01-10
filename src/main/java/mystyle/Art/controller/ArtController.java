package mystyle.Art.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mystyle.Art.dao.ArtDAO;
import mystyle.Art.model.ArtModel;

@Controller



public class ArtController {
	
	@Autowired
	ArtDAO artDAO;
	
	//need to create a dao of the users name to show on the home page
	//(page with pictues to say (hi "tom" choose these pictures below
	//the below params help communicating between the jsp, dao and controller
	@RequestMapping("/reg")
	public ModelAndView showHome( @RequestParam (name = "name", required = false) String name, 
			@RequestParam (name = "last", required = false) String last,
			@RequestParam (name = "email", required = false) String email,
			@RequestParam (name = "cat1", required = false) String cat1){
		
		ModelAndView mv = new ModelAndView("reg");
		//need find all to find all the users!
		mv.addObject("users", artDAO.findAll());
//		List <ArtModel> users = artDAO.findAll();
	mv.addObject("cat1", cat1);
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
