package org.stefx.hexweather.module.currentweather.service;

import hex.service.stateless.http.HTTPServiceConfiguration;
import hex.service.stateless.http.IHTTPService;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;

/**
 * @author Stéphane ARZT
 */
interface IGetCurrentWeatherService extends IHTTPService<HTTPServiceConfiguration>
{
	function getCurrentWeather() : CurrentWeatherVO;
}