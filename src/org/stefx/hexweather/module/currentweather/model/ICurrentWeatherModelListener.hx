package org.stefx.hexweather.module.currentweather.model;

import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;

/**
 * @author Stéphane ARZT
 */
interface ICurrentWeatherModelListener
{
	function onCurrentWeatherLoaded( currentWeather : CurrentWeatherVO ) : Void;
}