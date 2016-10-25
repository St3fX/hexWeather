package org.stefx.hexweather.service.wunderground;

import hex.log.Logger;
import hex.service.stateless.http.HTTPService;
import hex.service.stateless.http.HTTPServiceConfiguration;
import org.stefx.hexweather.constant.CAPIKey;
import org.stefx.hexweather.constant.CLocation;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherMapVO;
import org.stefx.hexweather.module.currentweathermap.service.IGetCurrentWeatherMapService;
import org.stefx.hexweather.module.currentweathermap.service.IGetCurrentWeatherService;import org.stefx.hexweather.parser.WundergroundCurrentWeatherParser;


/**
 * ...
 * @author Stéphane ARZT
 */
class GetCurrentWeatherMapService extends HTTPService implements IGetCurrentWeatherMapService
{

	var serviceUrl : String;
	
	public function new() 
	{
		super();
	}
	
	@PostConstruct
	override public function createConfiguration() : Void
	{
		Logger.debug("GetCurrentWeatherMapService::createConfiguration");
		serviceUrl = "http://api.wunderground.com/api/" + CAPIKey.KEY 
					   + "/satellite/q/" + CLocation.STATE + "/"
				       + CLocation.CITY + ".gif?width=300&height=230&basemap=1";
		this.setConfiguration( new HTTPServiceConfiguration( serviceUrl ) );
		this.setParser( new WundergroundCurrentWeatherMapParser() );
	}

	public function getCurrentWeatherMap() : CurrentWeatherMapVO 
	{
		Logger.info( this._result );
		
		var currentWeatherMapVO : CurrentWeatherMapVO = new CurrentWeatherMapVO();
		currentWeatherMapVO.url = this.serviceUrl;
		this._result = currentWeatherMapVO; 
		return this._result;
	}
}