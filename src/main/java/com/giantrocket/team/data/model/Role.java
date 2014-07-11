package com.giantrocket.team.data.model;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

public enum Role {

	CARRY("Carry"),
	SUPPORT("Support"),
	OFFLANE("Offlaner"),
	MID("Mid");
	
    private final String description;
    private static final Map<String, Role> LOOKUP = new HashMap<String, Role>();

    static {
        for (Role s : EnumSet.allOf(Role.class)) {
            LOOKUP.put(s.getDescription(), s);
        }
    }

    private Role(String description) {
        this.description = description;
    }

    public static Role getByDescription(String description) {
        return LOOKUP.get(description);
    }

    public String getDescription() {
        return this.description;
    }
	
}
