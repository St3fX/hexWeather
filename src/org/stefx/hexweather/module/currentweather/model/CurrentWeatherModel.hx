package org.stefx.hexweather.module.currentweather.model;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;
import org.stefx.hexweather.module.currentweather.model.CurrentWeatherModelDispatcher;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherModel implements ICurrentWeatherModel
{

	var _currentWeather : CurrentWeatherVO;
	
	public var dispatcher : CurrentWeatherModelDispatcher;

	public function new() 
	{
		dispatcher = new CurrentWeatherModelDispatcher();
	}
	
	public function setCurrentWeather( currentWeather : CurrentWeatherVO ) 
	{
		this._currentWeather = currentWeather;
		dispatcher.onCurrentWeatherLoaded( this._currentWeather );
	}
	
	public function getCurrentWeather() : CurrentWeatherVO 
	{
		return this._currentWeather;
	}
	
	public function addListener( listener : ICurrentWeatherModelListener ) : Void 
	{
		this.dispatcher.addListener( listener );
	}
	
	public function removeListener( listener : ICurrentWeatherModelListener ) : Void 
	{
		this.dispatcher.removeListener( listener );
	}
	
}