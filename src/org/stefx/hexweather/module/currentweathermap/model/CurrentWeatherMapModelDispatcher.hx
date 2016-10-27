package org.stefx.hexweather.module.currentweathermap.model;

import hex.model.ModelDispatcher;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherMapModelDispatcher extends ModelDispatcher<ICurrentWeatherMapModelListener> implements ICurrentWeatherMapModelListener
{

	public function new() 
	{
		super();
		
	}
	
	public function onCurrentWeatherMapLoaded( mapUrl : String ) 
	{
	}
	
}