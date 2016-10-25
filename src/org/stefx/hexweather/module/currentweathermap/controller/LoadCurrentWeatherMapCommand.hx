package org.stefx.hexweather.module.currentweathermap.controller;

import hex.control.command.BasicCommand;
import hex.di.IInjectorContainer;
import hex.log.Logger;
import hex.service.stateless.IAsyncStatelessServiceListener;
import hex.service.stateless.IAsyncStatelessService;
import org.stefx.hexweather.module.currentweathermap.service.IGetCurrentWeatherMapService;
import org.stefx.hexweather.module.currentweathermap.model.ICurrentWeatherMapModel;
/**
 * ...
 * @author Stéphane ARZT
 */
class LoadCurrentWeatherMapCommand extends BasicCommand implements IAsyncStatelessServiceListener
{

	@Inject
	public var currentWeatherMapService : IGetCurrentWeatherMapService;
	
	@Inject
	public var currentWeatherMapModel : ICurrentWeatherMapModel;
	
	public function new() 
	{
		super();
		
	}
	
	public function execute() : Void
	{
		Logger.debug( "LoadCurrentWeatherCommand::execute" );
		currentWeatherMapService.addListener( this );
		currentWeatherMapService.call();
	}
	
	public function onServiceComplete( service : IAsyncStatelessService ) : Void 
	{
		Logger.debug( "LoadCurrentWeatherCommand::onServiceComplete" );
		currentWeatherMapModel.setCurrentWeatherMap( cast( service, IGetCurrentWeatherMapService ).getCurrentWeatherMap() );
	}
	
	public function onServiceFail( service : IAsyncStatelessService ) : Void 
	{
		Logger.debug("onServiceFail");
	}
	
	public function onServiceCancel( service : IAsyncStatelessService ) : Void 
	{
		Logger.debug("onServiceCancel");
	}
	
	public function onServiceTimeout( service : IAsyncStatelessService ) : Void 
	{
		Logger.debug("onServiceTimeout");
	}
	
}