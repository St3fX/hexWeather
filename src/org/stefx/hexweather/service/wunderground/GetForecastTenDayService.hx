package org.stefx.hexweather.service.wunderground;

import hex.service.stateless.http.HTTPService;
import hex.log.Logger;
import org.stefx.hexweather.module.forecasttenday.service.IGetForecastTenDayService;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;
import org.stefx.hexweather.constant.CAPIKey;
import org.stefx.hexweather.constant.CLocation;
import hex.service.stateless.http.HTTPServiceConfiguration;
import org.stefx.hexweather.parser.WundergroundForecastTenDayParser;


/**
 * ...
 * @author Stéphane ARZT
 */
class GetForecastTenDayService extends HTTPService implements IGetForecastTenDayService
{

	public function new() 
	{
		super();
	}
	
	@PostConstruct
	override public function createConfiguration() : Void
	{
		Logger.debug("GetForecast10DayService::createConfiguration");
		var serviceUrl = "http://api.wunderground.com/api/" + CAPIKey.KEY 
					   + "/forecast10day/q/" + CLocation.STATE + "/"
				       + CLocation.CITY + ".json";
		this.setConfiguration( new HTTPServiceConfiguration( serviceUrl ) );
		this.setParser( new WundergroundForecastTenDayParser() );
	}

	public function getForecastTenDay() : ForecastTenDayVO 
	{
		return this._result;
	}
	
}