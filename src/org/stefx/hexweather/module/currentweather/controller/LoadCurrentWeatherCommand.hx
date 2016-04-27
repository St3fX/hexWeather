package org.stefx.hexweather.module.currentweather.controller;

import hex.control.command.BasicCommand;
import hex.di.IInjectorContainer;
import hex.log.Logger;
import hex.service.stateless.http.HTTPServiceConfiguration;
import hex.service.stateless.http.IHTTPServiceListener;
import hex.service.stateless.http.IHTTPService;
import org.stefx.hexweather.module.currentweather.model.ICurrentWeatherModel;
import org.stefx.hexweather.module.currentweather.service.IGetCurrentWeatherService;
/**
 * ...
 * @author Stéphane ARZT
 */
class LoadCurrentWeatherCommand extends BasicCommand implements IHTTPServiceListener<HTTPServiceConfiguration> implements IInjectorContainer
{

	@Inject
	public var currentWeatherService : IGetCurrentWeatherService;
	
	@Inject
	public var currentWeatherModel : ICurrentWeatherModel;
	
	public function new() 
	{
		super();
		
	}
	
	public function execute() : Void
	{
		Logger.DEBUG( "LoadCurrentWeatherCommand::execute" );
		currentWeatherService.addHTTPServiceListener( this );
		currentWeatherService.call();
	}
	
	public function onServiceComplete( service : IHTTPService<HTTPServiceConfiguration> ) : Void 
	{
		Logger.DEBUG( "LoadCurrentWeatherCommand::onServiceComplete" );
		currentWeatherModel.setCurrentWeather( cast( service, IGetCurrentWeatherService ).getCurrentWeather() );
	}
	
	public function onServiceFail( service : IHTTPService<HTTPServiceConfiguration> ) : Void 
	{
		Logger.DEBUG("onServiceFail");
	}
	
	public function onServiceCancel( service : IHTTPService<HTTPServiceConfiguration> ) : Void 
	{
		Logger.DEBUG("onServiceCancel");
	}
	
	public function onServiceTimeout( service : IHTTPService<HTTPServiceConfiguration> ) : Void 
	{
		Logger.DEBUG("onServiceTimeout");
	}
	
}