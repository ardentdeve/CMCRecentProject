package project;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class CMCDriver {
	private String username;


	public static void main(String[] args) {

		SearchController searchCh = new SearchController();
		AdminUI admin = new AdminUI();
		ArrayList<String> emphasis = admin.getEmphasis("ADELPHI");
		for(int i = 0; i<emphasis.size(); i++)
		{
			System.out.println(emphasis.get(i));
		}
		University tech = new University("Kanye West TECHNOLOGY ","Kanye City","BIG-CITY","PRIVATE",
				5000,50.0,800,800,800,22000.0,50,1000.5,25.0,70,4,4,null);
		ArrayList<University>uni= searchCh.search("","MINNESOTA","","",-1,-1,-1, -1, -1, -1,-1, -1, -1, -1,-1,-1,-1,-1, -1 , -1 , -1, -1, -1,-1,-1,-1,-1,-1,null);
		for(University udi:uni)
		{ 
	
	          ArrayList<University >reco = searchCh.viewSchool(udi);
	          for(University u : reco)
	          {
	        	  System.out.println(u.getDistance());
	          }
			}
		
		StudentUI  studentUI= new StudentUI();
		AdminUI   adminUI= new AdminUI();
		System.out.println(studentUI.logOn("nicoleK", "1234"));
		System.out.print(studentUI.getStudentInfo());
		ArrayList<University>uni2 = studentUI.getSavedUniversity();
		for(University u: uni2)
		{
			System.out.println(u);
		}
		studentUI.removeUniversity("BOSTON COLLEGE");
		//studentUI.editProfile("ashley", "loyola", "imad1234");
		studentUI.logOff();
		System.out.println(adminUI.logOn("Rahal", "Imad"));
		 Student s = new Student("Mimi", "Kardashian23", "MimiLuv33", "mi1234", 'u', 'Y');
		adminUI.addStudent(s);
		Student editS = new Student("MimiN", "Kallya44", "MimiLuv33", "mi1234", 'u', 'N');
		adminUI.editStudent(editS);
		adminUI.activateUser(editS);
		adminUI.deactivateUser(editS);
		adminUI.getStudents();
		adminUI.getAdmins();
		adminUI.logOff();


















	}




















	}

