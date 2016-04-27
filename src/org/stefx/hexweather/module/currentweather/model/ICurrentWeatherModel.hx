package org.stefx.hexweather.module.currentweather.model;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;

/**
 * @author Stéphane ARZT
 */
interface ICurrentWeatherModel extends ICurrentWeatherModelRO 
{
	function setCurrentWeather( currentWeather : CurrentWeatherVO ) : Void;
}