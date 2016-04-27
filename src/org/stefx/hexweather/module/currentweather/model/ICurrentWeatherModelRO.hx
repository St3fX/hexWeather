package org.stefx.hexweather.module.currentweather.model;
import hex.model.IModelRO;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;

/**
 * ...
 * @author Stéphane ARZT
 */
interface ICurrentWeatherModelRO extends IModelRO<ICurrentWeatherModelListener>
{
	function getCurrentWeather() : CurrentWeatherVO;
}