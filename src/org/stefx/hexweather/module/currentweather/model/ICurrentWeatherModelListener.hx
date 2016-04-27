package org.stefx.hexweather.module.currentweather.model;
import hex.model.IModelListener;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;

/**
 * @author Stéphane ARZT
 */
interface ICurrentWeatherModelListener extends IModelListener
{
	function onCurrentWeatherLoaded( currentWeather : CurrentWeatherVO ) : Void;
}