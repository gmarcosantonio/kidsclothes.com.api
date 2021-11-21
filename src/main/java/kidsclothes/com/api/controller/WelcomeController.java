package kidsclothes.com.api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class WelcomeController {

	@GetMapping("/wecome")
	public String welcome()  {

		return "Welcome to API Kidsclothes.COM";
	}

}