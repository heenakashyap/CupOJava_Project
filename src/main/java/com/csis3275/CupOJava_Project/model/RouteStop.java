package com.csis3275.CupOJava_Project.model;

import org.springframework.stereotype.Component;

@Component
public class RouteStop {
	
	int routeID;
	int stopID;
	String direction;
	int stopNumber;
	int timeToThisStop;
	
	public int getRouteID() {
		return routeID;
	}
	public void setRouteID(int routeID) {
		this.routeID = routeID;
	}
	public int getStopID() {
		return stopID;
	}
	public void setStopID(int stopID) {
		this.stopID = stopID;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	public int getStopNumber() {
		return stopNumber;
	}
	public void setStopNumber(int stopNumber) {
		this.stopNumber = stopNumber;
	}
	public int getTimeToThisStop() {
		return timeToThisStop;
	}
	public void setTimeToThisStop(int timeToThisStop) {
		this.timeToThisStop = timeToThisStop;
	}
	
	
}
