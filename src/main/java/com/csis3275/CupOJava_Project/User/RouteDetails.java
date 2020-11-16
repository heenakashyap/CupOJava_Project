package com.csis3275.CupOJava_Project.User;

import org.springframework.stereotype.Component;

@Component
public class RouteDetails {

	String time;
	String noofstops;
	String stops;
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getNoofstops() {
		return noofstops;
	}
	public void setNoofstops(String noofstops) {
		this.noofstops = noofstops;
	}
	public String getStops() {
		return stops;
	}
	public void setStops(String stops) {
		this.stops = stops;
	}
	
}
