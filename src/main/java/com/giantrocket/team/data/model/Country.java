package com.giantrocket.team.data.model;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

public enum Country {

	ARGENTINA("Argentina"),
	OTHER("Otro");
	
	private final String description; 
	private static final Map<String, Country> LOOKUP = new HashMap<String, Country>();

    static {
        for (Country s : EnumSet.allOf(Country.class)) {
            LOOKUP.put(s.getDescription(), s);
        }
    }

    private Country(String description) {
        this.description = description;
    }

    public static Country getByDescription(String description) {
        return LOOKUP.get(description);
    }

    public String getDescription() {
        return this.description;
    }
	
}
