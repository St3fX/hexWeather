package org.stefx.hexweather.service.wunderground;

import hex.log.Logger;
import hex.service.stateless.http.HTTPService;
import hex.service.stateless.http.HTTPServiceConfiguration;
import org.stefx.hexweather.constant.CLocation;
import org.stefx.hexweather.module.currentweather.service.IGetCurrentWeatherService;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;
import org.stefx.hexweather.parser.WundergroundCurrentWeatherParser;


/**
 * ...
 * @author Stéphane ARZT
 */
class GetCurrentWeatherService extends HTTPService<HTTPServiceConfiguration> implements IGetCurrentWeatherService
{

	public function new() 
	{
		super();
		
	}
	
	@PostConstruct
	override public function createConfiguration() : Void
	{
		Logger.DEBUG("GetCurrentWeatherService createConfiguration");
		var serviceUrl = "http://api.wunderground.com/api/864880f1238c33fe/conditions/q/" + CLocation.STATE + "/" + CLocation.CITY + ".json";
		Logger.DEBUG( serviceUrl );
		this.setConfiguration( new HTTPServiceConfiguration( serviceUrl ) );
		this.setParser( new WundergroundCurrentWeatherParser() );
	}

	public function getCurrentWeather() : CurrentWeatherVO 
	{
		return this._result;
	}
	
}