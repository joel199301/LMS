package com.office.green.games;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/game")
public class GameController {
	
	@Autowired
	GameService gameService;
	
	@GetMapping("/")
	public String game() {
		return "green/game";
	}
	
	@GetMapping("/registerGameForm")
	public String registerGameForm() {
		return "green/register_game_form";
	}
	
	
	
	
	
	

}
