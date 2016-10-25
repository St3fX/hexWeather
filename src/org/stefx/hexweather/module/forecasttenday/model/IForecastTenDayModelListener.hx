package org.stefx.hexweather.module.forecasttenday.model;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;

/**
 * @author Stéphane ARZT
 */
interface IForecastTenDayModelListener 
{
	function onForecastTenDayLoaded( forecast10Day : ForecastTenDayVO ) : Void;
}