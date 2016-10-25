package org.stefx.hexweather.parser;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;

/**
 * ...
 * @author Stéphane ARZT
 */
class WundergroundForecastTenDayParser
{

	public function new() 
	{
	}

	public function parse( serializedContent : Dynamic, ?target : Dynamic ) : ForecastTenDayVO 
	{
		var jsonString : String = serializedContent;
		var json = haxe.Json.parse( jsonString );		
		var forecast10DayVO = new ForecastTenDayVO();
		
		for ( n in Reflect.fields( json ) )
		{
			Reflect.setProperty( forecast10DayVO, n, Reflect.field( json, n ) );
		}
		
		return forecast10DayVO;
	}
	
}