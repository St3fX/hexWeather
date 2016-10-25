package org.stefx.hexweather.module.forecasttenday.model;
import hex.model.IModelRO;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;
import org.stefx.hexweather.module.forecasttenday.model.IForecastTenDayModelListener;

/**
 * @author Stéphane ARZT
 */
interface IForecastTenDayModelRO extends IModelRO<IForecastTenDayModelListener> 
{
	function getForecastTenDay() : ForecastTenDayVO;
}