package org.stefx.hexweather.parser;

import hex.data.IParser;
import hex.data.ServiceParser;
import org.stefx.hexweather.module.currentweathermap.vo.CurrentWeatherMapVO;
import hex.log.Logger;

/**
 * ...
 * @author Stéphane ARZT
 */
class WundergroundCurrentWeatherMapParser 
{
	
	public function new() 
	{
	}

	public function parse( serializedContent : Dynamic, ?target : Dynamic ) : CurrentWeatherMapVO
	{
		var currentWeatherMapVO = serializedContent;
		return currentWeatherMapVO;
	}
	
}