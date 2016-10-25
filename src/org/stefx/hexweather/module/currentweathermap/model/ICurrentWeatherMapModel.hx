package org.stefx.hexweather.module.currentweathermap.model;
import org.stefx.hexweather.module.currentweathermap.vo.CurrentWeatherMapVO;

/**
 * @author Stéphane ARZT
 */
interface ICurrentWeatherMapModel extends ICurrentWeatherMapModelRO 
{
	function setCurrentWeatherMap( currentWeatherMap : CurrentWeatherMapVO ) : Void;
}