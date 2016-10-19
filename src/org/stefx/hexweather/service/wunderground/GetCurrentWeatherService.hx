package org.stefx.hexweather.service.wunderground;

import hex.log.Logger;
import hex.service.stateless.http.HTTPService;
import hex.service.stateless.http.HTTPServiceConfiguration;
import org.stefx.hexweather.constant.CAPIKey;
import org.stefx.hexweather.constant.CLocation;
import org.stefx.hexweather.module.currentweather.service.IGetCurrentWeatherService;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;
import org.stefx.hexweather.parser.WundergroundCurrentWeatherParser;


/**
 * ...
 * @author Stéphane ARZT
 */
class GetCurrentWeatherService extends HTTPService implements IGetCurrentWeatherService
{

	public function new() 
	{
		super();
	}
	
	@PostConstruct
	override public function createConfiguration() : Void
	{
		Logger.debug("GetCurrentWeatherService::createConfiguration");
		var serviceUrl = "http://api.wunderground.com/api/" + CAPIKey.KEY 
					   + "/conditions/q/" + CLocation.STATE + "/"
				       + CLocation.CITY + ".json";
		this.setConfiguration( new HTTPServiceConfiguration( serviceUrl ) );
		this.setParser( new WundergroundCurrentWeatherParser() );
	}

	public function getCurrentWeather() : CurrentWeatherVO 
	{
		return this._result;
	}
	
}