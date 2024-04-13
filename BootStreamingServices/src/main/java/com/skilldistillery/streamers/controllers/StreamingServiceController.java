package com.skilldistillery.streamers.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.streamers.data.StreamingServiceDAO;
import com.skilldistillery.streamers.entities.StreamingService;

@Controller
public class StreamingServiceController {

	private StreamingServiceDAO streamDAO;

	public StreamingServiceController(StreamingServiceDAO dao) {
		this.streamDAO = dao;
	}

	@GetMapping({ "/", "home.do" })
	public String index() {
		return "home";
	}
	
	@GetMapping({"getService.do"})
	public String getFilmById( @RequestParam("id") int id, Model model) {
		StreamingService streamer = streamDAO.findById(id);
		model.addAttribute("streamer", streamer);
		return "streamers/show";
	}

}
