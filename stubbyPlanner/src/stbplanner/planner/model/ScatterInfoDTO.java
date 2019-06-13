package stbplanner.planner.model;

import java.util.ArrayList;
import java.util.Map;

public class ScatterInfoDTO {
	
	String label;
	ArrayList<Map<String,String>> dotsList;
	
	
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public ArrayList<Map<String, String>> getDotsList() {
		return dotsList;
	}
	public void setDotsList(ArrayList<Map<String, String>> dotsList) {
		this.dotsList = dotsList;
	}
	
	
	
	

}
