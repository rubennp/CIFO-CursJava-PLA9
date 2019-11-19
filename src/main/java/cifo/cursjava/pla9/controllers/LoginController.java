package cifo.cursjava.pla9.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/authenticateTheUser")
	public String autenticado() {
		return "redirect:/";
	}
	
	@GetMapping("/denegat")
	public String denegat() {
		return "denegat";
	}
}
