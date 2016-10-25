package org.stefx.hexweather.module.currentweathermap.service;

import hex.service.stateless.http.HTTPServiceConfiguration;
import hex.service.stateless.http.IHTTPService;
import org.stefx.hexweather.module.currentweathermap.vo.CurrentWeatherMapVO;

/**
 * @author Stéphane ARZT
 */
interface IGetCurrentWeatherMapService extends IHTTPService
{
	function getCurrentWeatherMap() : CurrentWeatherMapVO;
}