package org.stefx.hexweather.module.currentweathermap.model;

import org.stefx.hexweather.module.currentweathermap.vo.CurrentWeatherMapVO;

/**
 * @author Stéphane ARZT
 */
interface ICurrentWeatherMapModelListener
{
	function onCurrentWeatherMapLoaded( currentWeatherMap : CurrentWeatherMapVO ) : Void;
}