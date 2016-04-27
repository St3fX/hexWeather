package org.stefx.hexweather.module.currentweather;
import hex.module.IModule;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;

/**
 * ...
 * @author Stéphane ARZT
 */
class ICurrentWeatherModule extends IModule
{

	public function new() 
	{
		function getCurrentWeather() : CurrentWeatherVO;
	}
	
}