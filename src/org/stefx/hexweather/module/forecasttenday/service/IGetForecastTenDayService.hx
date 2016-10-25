package org.stefx.hexweather.module.forecasttenday.service;
import hex.service.stateless.http.IHTTPService;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;

/**
 * @author Stéphane ARZT
 */
interface IGetForecastTenDayService extends IHTTPService
{
	function getForecastTenDay() : ForecastTenDayVO;
}