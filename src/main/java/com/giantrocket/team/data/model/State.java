package com.giantrocket.team.data.model;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

public enum State {

	BUENOS_AIRES("Buenos Aires"),
	CATAMARCA("Catamarca"),
	CHACO("Chaco"),
	CHUBUT("Chubut"),
	CORDOBA("Córdoba"),
	CORRIENTES("Corrientes"),
	ENTRE_RIOS("Entre Ríos"),
	FORMOSA("Formosa"),
	JUJUY("Jujuy"),
	LA_PAMPA("La Pampa"),
	LA_RIOJA("La Rioja"),
	MENDOZA("Mendoza"),
	MISIONES("Misiones"),
	NEUQUEN("Neuquén"),
	RIO_NEGRO("Río Negro"),
	SALTA("Salta"),
	SAN_JUAN("San Juan"),
	SAN_LUIS("San Luis"),
	SANTA_CRUZ("Santa Cruz"),
	SANTA_FE("Santa Fe"),
	SANTIAGO_DEL_ESTERO("Santiago del Estero"),
	TIERRA_DEL_FUEGO("Tierra del Fuego"),
	TUCUMAN("Tucumán");
	
	private final String description; 
	private static final Map<String, State> LOOKUP = new HashMap<String, State>();

    static {
        for (State s : EnumSet.allOf(State.class)) {
            LOOKUP.put(s.getDescription(), s);
        }
    }

    private State(String description) {
        this.description = description;
    }

    public static State getByDescription(String description) {
        return LOOKUP.get(description);
    }

    public String getDescription() {
        return this.description;
    }
	
	
}
