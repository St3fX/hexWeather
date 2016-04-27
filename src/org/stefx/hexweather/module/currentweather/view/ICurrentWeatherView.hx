package org.stefx.hexweather.module.currentweather.view;
import hex.view.IView;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;

/**
 * @author Stéphane ARZT
 */
interface ICurrentWeatherView extends IView 
{
	function setCurrentWeather( currentWeatherVO : CurrentWeatherVO ) : Void;
}