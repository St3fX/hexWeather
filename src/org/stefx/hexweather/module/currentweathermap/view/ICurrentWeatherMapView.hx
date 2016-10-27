package org.stefx.hexweather.module.currentweathermap.view;
import hex.view.IView;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;

/**
 * @author Stéphane ARZT
 */
interface ICurrentWeatherMapView extends IView 
{
	function setCurrentWeatherMap( mapUrl : String ) : Void;
}