package org.stefx.hexweather.parser;

import hex.data.IParser;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;
import hex.log.Logger;

/**
 * ...
 * @author Stéphane ARZT
 */
class WundergroundCurrentWeatherParser
{
	
	public function new() 
	{
	}

	public function parse( serializedContent : Dynamic ) : CurrentWeatherVO 
	{
		var jsonString : String = serializedContent;
		var json = haxe.Json.parse( jsonString );
		Logger.DEBUG( "Weather: " + json.current_observation.temp_c );
		
		var currentWeatherVO = new CurrentWeatherVO();
		
		for ( n in Reflect.fields( json ) )
		{
			Reflect.setProperty( currentWeatherVO, n, Reflect.field( json, n ) );
		}
		
		return currentWeatherVO;
	}
	
}