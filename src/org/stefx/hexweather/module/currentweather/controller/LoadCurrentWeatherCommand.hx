package org.stefx.hexweather.module.currentweather.controller;

import hex.control.command.BasicCommand;
import hex.di.IInjectorContainer;
import hex.log.Logger;
import hex.service.stateless.IAsyncStatelessServiceListener;
import hex.service.stateless.IAsyncStatelessService;
import org.stefx.hexweather.module.currentweather.model.ICurrentWeatherModel;
import org.stefx.hexweather.module.currentweather.service.IGetCurrentWeatherService;
/**
 * ...
 * @author Stéphane ARZT
 */
class LoadCurrentWeatherCommand extends BasicCommand implements IInjectorContainer implements IAsyncStatelessServiceListener
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
		currentWeatherService.addListener( this );
		currentWeatherService.call();
	}
	
	public function onServiceComplete( service : IAsyncStatelessService ) : Void 
	{
		Logger.DEBUG( "LoadCurrentWeatherCommand::onServiceComplete" );
		currentWeatherModel.setCurrentWeather( cast( service, IGetCurrentWeatherService ).getCurrentWeather() );
	}
	
	public function onServiceFail( service : IAsyncStatelessService ) : Void 
	{
		Logger.DEBUG("onServiceFail");
	}
	
	public function onServiceCancel( service : IAsyncStatelessService ) : Void 
	{
		Logger.DEBUG("onServiceCancel");
	}
	
	public function onServiceTimeout( service : IAsyncStatelessService ) : Void 
	{
		Logger.DEBUG("onServiceTimeout");
	}
	
}