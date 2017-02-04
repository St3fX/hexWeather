package org.stefx.hexweather.module.currentweathermap.controller;

import hex.control.command.BasicCommand;
import hex.di.IInjectorContainer;
import hex.log.Logger;
import hex.service.stateless.IAsyncStatelessServiceListener;
import hex.service.stateless.IAsyncStatelessService;
import org.stefx.hexweather.module.currentweathermap.model.ICurrentWeatherMapModel;
import org.stefx.hexweather.constant.CAPIKey;
import org.stefx.hexweather.constant.CLocation;

/**
 * ...
 * @author Stéphane ARZT
 */
class LoadCurrentWeatherMapCommand extends BasicCommand
{

	@Inject
	public var currentWeatherMapModel : ICurrentWeatherMapModel;
	
	public function new() 
	{
		super();
	}
	
	public function execute() : Void
	{
		Logger.info( "LoadCurrentWeatherCommand::execute" );
		var mapUrl : String = "http://api.wunderground.com/api/" + CAPIKey.KEY 
							+ "/satellite/q/" + CLocation.STATE + "/"
							+ CLocation.CITY + ".gif?width=300&height=230&basemap=1&rd=" + Math.random() * 1000000;
		currentWeatherMapModel.setCurrentWeatherMap( mapUrl );
	}
}