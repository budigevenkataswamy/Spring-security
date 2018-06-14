package com.luv2code.springdemo;

public class BaseballCoach implements Coach {

	// define a private field for the dependency injection
	private FortuneService fortuneService;

	// define constructor
	public BaseballCoach(FortuneService theFortuneService) {
		fortuneService = theFortuneService;
		// TODO Auto-generated constructor stub
	}

	public String getDailyWorkout() {
		return "spend 30 minutes on batting practice";
	}

	@Override
	public String getDailyFortune() {
		return fortuneService.getFortune();
	}

}
