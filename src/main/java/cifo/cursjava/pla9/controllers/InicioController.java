package cifo.cursjava.pla9.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InicioController {
	
	@GetMapping("/")
	public String inicio() {
		return "index";
	}
}
