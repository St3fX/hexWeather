package org.stefx.hexweather.module.currentweathermap.view;
import hex.view.IView;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;
import org.stefx.hexweather.module.currentweathermap.vo.CurrentWeatherMapVO;

/**
 * @author Stéphane ARZT
 */
interface ICurrentWeatherMapView extends IView 
{
	function setCurrentWeatherMap( currentWeatherMapVO : CurrentWeatherMapVO ) : Void;
}