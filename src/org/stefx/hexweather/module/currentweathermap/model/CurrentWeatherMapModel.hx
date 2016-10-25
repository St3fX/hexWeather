package org.stefx.hexweather.module.currentweathermap.model;
import org.stefx.hexweather.module.currentweathermap.vo.CurrentWeatherMapVO;
import org.stefx.hexweather.module.currentweathermap.model.CurrentWeatherMapModelDispatcher;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherMapModel implements ICurrentWeatherMapModel
{

	var _currentWeatherMap : CurrentWeatherMapVO;
	
	public var dispatcher : CurrentWeatherMapModelDispatcher;

	public function new() 
	{
		dispatcher = new CurrentWeatherMapModelDispatcher();
	}
	
	public function setCurrentWeatherMap( currentWeatherMap : CurrentWeatherMapVO ) 
	{
		this._currentWeatherMap = currentWeatherMap;
		dispatcher.onCurrentWeatherMapLoaded( this._currentWeatherMap );
	}
	
	public function getCurrentWeatherMap() : CurrentWeatherMapVO 
	{
		return this._currentWeatherMap;
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