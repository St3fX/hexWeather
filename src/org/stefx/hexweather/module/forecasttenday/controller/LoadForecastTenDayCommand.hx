package org.stefx.hexweather.module.forecasttenday.controller;

import hex.control.command.BasicCommand;
import hex.di.IInjectorContainer;
import hex.log.Logger;
import hex.service.stateless.IAsyncStatelessServiceListener;
import hex.service.stateless.IAsyncStatelessService;
import org.stefx.hexweather.module.forecasttenday.model.IForecastTenDayModel;
import org.stefx.hexweather.module.forecasttenday.service.IGetForecastTenDayService;

/**
 * ...
 * @author Stéphane ARZT
 */
class LoadForecastTenDayCommand extends BasicCommand implements IAsyncStatelessServiceListener
{

	@Inject
	public var forecastTenDayService : IGetForecastTenDayService;
	
	@Inject
	public var forecastTenDayModel : IForecastTenDayModel;

	public function new() 
	{
		super();
	}
	
	public function execute() : Void
	{
		Logger.debug( "LoadForecast10DayCommand::execute" );
//		forecastTenDayService.timeoutDuration = 10000;
		forecastTenDayService.addListener( this );
		forecastTenDayService.call();
	}
	
	public function onServiceComplete( service : IAsyncStatelessService ) : Void 
	{
		Logger.debug( "LoadForecast10DayCommand::onServiceComplete" );
		forecastTenDayModel.setForecastTenDay( cast( service, IGetForecastTenDayService ).getForecastTenDay() );
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
		Logger.debug("onServiceTimeout" );
	}

}