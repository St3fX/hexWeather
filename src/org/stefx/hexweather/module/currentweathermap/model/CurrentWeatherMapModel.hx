package org.stefx.hexweather.module.currentweathermap.model;
import org.stefx.hexweather.module.currentweathermap.model.CurrentWeatherMapModelDispatcher;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherMapModel implements ICurrentWeatherMapModel
{

	public var dispatcher : CurrentWeatherMapModelDispatcher;

	public function new() 
	{
		dispatcher = new CurrentWeatherMapModelDispatcher();
	}
	
	public function setCurrentWeatherMap( mapUrl : String) 
	{
		dispatcher.onCurrentWeatherMapLoaded( mapUrl );
	}
	
	public function addListener( listener : ICurrentWeatherMapModelListener ) : Void 
	{
		this.dispatcher.addListener( listener );
	}
	
	public function removeListener( listener : ICurrentWeatherMapModelListener ) : Void 
	{
		this.dispatcher.removeListener( listener );
	}
	
}