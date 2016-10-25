package org.stefx.hexweather.module.currentweathermap.model;
import hex.model.IModelRO;
import org.stefx.hexweather.module.currentweathermap.vo.CurrentWeatherMapVO;

/**
 * ...
 * @author Stéphane ARZT
 */
interface ICurrentWeatherMapModelRO extends IModelRO<ICurrentWeatherMapModelListener>
{
	function getCurrentWeatherMap() : CurrentWeatherMapVO;
}