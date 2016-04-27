package org.stefx.hexweather.module.currentweather.model;

import hex.model.ModelDispatcher;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherModelDispatcher extends ModelDispatcher<ICurrentWeatherModelListener> implements ICurrentWeatherModelListener
{

	public function new() 
	{
		super();
		
	}
	
	public function onCurrentWeatherLoaded( currentWeather : CurrentWeatherVO ) 
	{
	}
	
}