package org.stefx.hexweather.module.forecasttenday;

import hex.config.stateful.IStatefulConfig;
import hex.config.stateless.StatelessCommandConfig;
import hex.config.stateless.StatelessModelConfig;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.dependency.RuntimeDependencies;
import hex.module.Module;
import hex.log.Logger;
import org.stefx.hexweather.module.forecasttenday.message.ForecastTenDayModuleMessage;
import org.stefx.hexweather.module.forecasttenday.view.ForecastTenDayViewHelper;
import org.stefx.hexweather.module.forecasttenday.view.ForecastTenDayViewJS;
import org.stefx.hexweather.module.forecasttenday.model.ForecastTenDayModel;
import org.stefx.hexweather.module.forecasttenday.model.IForecastTenDayModel;
import org.stefx.hexweather.module.forecasttenday.controller.LoadForecastTenDayCommand;


/**
 * ...
 * @author Stéphane ARZT
 */
class ForecastTenDayModule extends Module
{

	public function new( serviceConfig : IStatefulConfig ) 
	{
		super();
		
		_logger.info( "ForecastTenDayModule::new" );
		this._addStatefulConfigs( [ serviceConfig ] );
		this._addStatelessConfigClasses( [ ForecastTenDayCommandConfig, ForecastTenDayModelConfig ] );
		this.buildView();
		this._dispatchPrivateMessage( ForecastTenDayModuleMessage.LOAD_FORECAST_10_DAY ); 

		var timer = new haxe.Timer( 30 * 60000 );
		timer.run = function() 
		{
			Logger.info( "ForecastTenDayModule::tick" );
			this._dispatchPrivateMessage( ForecastTenDayModuleMessage.LOAD_FORECAST_10_DAY ); 
		}
	}
	
	override function _getRuntimeDependencies() : IRuntimeDependencies
	{
		var rd = new RuntimeDependencies();
		return rd;
	}

	function buildView() : Void
	{
		this.buildViewHelper( ForecastTenDayViewHelper, new ForecastTenDayViewJS( js.Browser.document.querySelector( ".forecast" ) ) );
	} 

}

private class ForecastTenDayCommandConfig extends StatelessCommandConfig
{
	override public function configure():Void
	{
		this.map( ForecastTenDayModuleMessage.LOAD_FORECAST_10_DAY, LoadForecastTenDayCommand );
	}
}

private class ForecastTenDayModelConfig extends StatelessModelConfig
{
	override public function configure() : Void
	{
		this.map( IForecastTenDayModel, ForecastTenDayModel );
	}	
}