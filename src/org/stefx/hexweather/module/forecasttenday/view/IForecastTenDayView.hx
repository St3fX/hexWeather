package org.stefx.hexweather.module.forecasttenday.view;
import hex.view.IView;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;

/**
 * @author Stéphane ARZT
 */
interface IForecastTenDayView extends IView
{
	function setForecastTenDay( forecastTenDayVO : ForecastTenDayVO ) : Void;
}