package com.giantrocket.team.web.controller;

import java.io.FileNotFoundException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.giantrocket.team.data.model.Role;
import com.giantrocket.team.data.model.Team;
import com.giantrocket.team.data.service.TeamService;

@Controller
@RequestMapping(value = "/team")
public class TeamController {
	
	private TeamService teamService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView getEmptyTeamForm() {
		ModelAndView view = new ModelAndView("create-team-screen");
		view.addObject("roles", Role.values());
		return view;
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public ModelAndView saveTeam(@RequestBody Team team) {
		try{
			this.teamService.saveTeam(team, null);
			ModelAndView view = new ModelAndView("success-team-screen");
			view.addObject("message", "team has been successfully created");
			return view;
		}
		catch(Exception e){
			ModelAndView view = new ModelAndView("create-team-screen");
			view.addObject("team", team);
			view.addObject("message", "There has been errors, please try again later");
			return view;
		}
	}
	
	@RequestMapping(value = "/{teamName}", method = RequestMethod.DELETE)
	public ModelAndView deleteTeam(@PathVariable String teamName) {
		boolean status = this.teamService.deleteTeam(teamName);
		if(status){
			ModelAndView view = new ModelAndView("success-team-screen");
			view.addObject("message", "Team has been successfully deleted");
			return view;
		}
		ModelAndView view = new ModelAndView("success-team-screen");
		view.addObject("message", "There has been errors, please try again later");
		return view;
	}
	
	@RequestMapping(value = "/{teamName}", method = RequestMethod.GET)
	public ModelAndView getTeam(@PathVariable String teamName) {
		try{
			Team team = this.teamService.getTeam(teamName);
			ModelAndView view = new ModelAndView("create-team-screen");
			if(team == null){
				view.addObject("message","There has been errors, please try again later");
				team = new Team();
			}
			view.addObject("team", team);
			return view;
		}catch(FileNotFoundException e){
			ModelAndView view = new ModelAndView("create-team-screen");
			view.addObject("message","Team does not exist");
			return view;
		}
	}
	
	@RequestMapping(value = "/{teamName}", method = RequestMethod.PUT)
	public ModelAndView updateTeam(@PathVariable String teamName, @RequestBody Team team) {
		try{
			this.teamService.saveTeam(team, teamName);
			ModelAndView view = new ModelAndView("success-team-screen");
			view.addObject("message", "team has been successfully created");
			return view;
		}
		catch(Exception e){
			ModelAndView view = new ModelAndView("create-team-screen");
			view.addObject("team", team);
			view.addObject("message", "There has been errors, please try again later");
			return view;
		}
	}

	public void setTeamService(TeamService teamService) {
		this.teamService = teamService;
	}
	
}
