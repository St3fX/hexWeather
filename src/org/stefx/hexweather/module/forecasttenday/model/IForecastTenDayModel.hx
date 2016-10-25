package org.stefx.hexweather.module.forecasttenday.model;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;

/**
 * @author Stéphane ARZT
 */
interface IForecastTenDayModel  extends IForecastTenDayModelRO
{
	function setForecastTenDay( forecastTenDayVO : ForecastTenDayVO ) : Void;
}