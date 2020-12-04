package com.csis3275.CupOJava_Project.model;

public class RouteTime {
	int startingTime = 0;
	int currentTime = 0;
	String frequency;
	
	public void setFrequency(String freq) {
		this.frequency = freq;
	}
	
	public int getStartingTime() {
		return startingTime;
	}
	public void setStartingTime(int startingTime) {
		this.startingTime = startingTime;
	}
	public int getCurrentTimeInt() {
		return (currentTime + startingTime);
	}
	public void setCurrentTime() {
		switch(this.frequency) {
		case "Rarely":
		this.currentTime += 60;
		break;
		
		case "Occasionally":
		this.currentTime += 30;
		
		case "Often":
		this.currentTime += 15;
		break;
		}
	}
	
	public boolean stopService() {
		int time = this.currentTime + this.startingTime;
		//A late time at night
		if(this.currentTime > 1320) {
			return true;
			
			//It's not late enough yet
		} else {
			return false;
		}
	}
	
	
	public String getCurrentTimeString() {
		int time = currentTime + startingTime;
		int remainingMinutes = time % 60;
		int hours = time / 60;
		return  Integer.toString(hours)+":"+Integer.toString(remainingMinutes);
		
	}
}
