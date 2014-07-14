package com.giantrocket.team.data.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.io.FileUtils;

import com.esotericsoftware.yamlbeans.YamlReader;
import com.esotericsoftware.yamlbeans.YamlWriter;
import com.giantrocket.team.data.model.Player;
import com.giantrocket.team.data.model.Team;

public class TeamService {
	
	private static final String USER_PATH = "env/teams/";
	
	public void saveTeam(Team team, String teamName) throws Exception{
		String filePath = createFilePath(team.getName());
		if(teamName == null){
			File teamFile = new File(filePath);
			if(teamFile.exists()){
				RuntimeException ex = new RuntimeException("A team with the requested name already exists, please contact an administrator to solve this problem");
				throw ex;
			}
		}
		Date creationDate = Calendar.getInstance().getTime();
		team.setCreationDate(creationDate);
		YamlWriter writer = new YamlWriter(new FileWriter(filePath));
		writer.write(team);
		writer.getConfig().setClassTag("Team", Team.class);
		writer.getConfig().setClassTag("Player", Player.class);
		writer.close();
	}

	public Team getTeam(String teamName) throws FileNotFoundException{
		try{
			String filePath = createFilePath(teamName);
			YamlReader reader = new YamlReader(new FileReader(filePath));
			reader.getConfig().setClassTag("Team", Team.class);
			Team team = (Team) reader.read();
			reader.close();
			return team;
		}catch(Exception e){
			return null;
		}
	}
	
	public boolean deleteTeam(String teamName) {
		String filePath = createFilePath(teamName);
		File file = new File(filePath);
		return FileUtils.deleteQuietly(file);
	}
	
	private String createFilePath(String teamName) {
		String fileName = teamName.toLowerCase().replaceAll("\\s+","");
		return USER_PATH + fileName + ".yml";
	}
	
}
