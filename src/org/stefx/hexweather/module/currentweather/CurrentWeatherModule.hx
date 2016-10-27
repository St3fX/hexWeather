package org.stefx.hexweather.module.currentweather;

import hex.config.stateful.IStatefulConfig;
import hex.config.stateless.StatelessCommandConfig;
import hex.config.stateless.StatelessModelConfig;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.dependency.RuntimeDependencies;
import hex.module.Module;
import hex.log.Logger;
import org.stefx.hexweather.module.currentweather.message.CurrentWeatherModuleMessage;
import org.stefx.hexweather.module.currentweather.model.CurrentWeatherModel;
import org.stefx.hexweather.module.currentweather.model.ICurrentWeatherModel;
import org.stefx.hexweather.module.currentweather.view.CurrentWeatherViewHelper;
import org.stefx.hexweather.module.currentweather.view.CurrentWeatherViewJS;
import org.stefx.hexweather.module.currentweather.controller.LoadCurrentWeatherCommand;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherModule extends Module
{

	public function new( serviceConfig : IStatefulConfig ) 
	{
		super();
		
		this._addStatefulConfigs( [ serviceConfig ] );
		this._addStatelessConfigClasses( [ CurrentWeatherCommandConfig, CurrentWeatherModelConfig ] );
		this.buildView();
		this._dispatchPrivateMessage( CurrentWeatherModuleMessage.LOAD_CURRENT_WEATHER );
		
		var timer = new haxe.Timer( 30 * 60000 );
		timer.run = function() 
		{
			this._dispatchPrivateMessage( CurrentWeatherModuleMessage.LOAD_CURRENT_WEATHER );
		}
	}
	
	override function _getRuntimeDependencies() : IRuntimeDependencies
	{
		var rd = new RuntimeDependencies();
		return rd;
	}

	function buildView() : Void
	{
		this.buildViewHelper( CurrentWeatherViewHelper, new CurrentWeatherViewJS( js.Browser.document.querySelector( ".currentWeather" ) ) );
	}

}

private class CurrentWeatherCommandConfig extends StatelessCommandConfig
{
	override public function configure():Void
	{
		this.map( CurrentWeatherModuleMessage.LOAD_CURRENT_WEATHER, LoadCurrentWeatherCommand );
	}
}

private class CurrentWeatherModelConfig extends StatelessModelConfig
{
	override public function configure() : Void
	{
		this.map( ICurrentWeatherModel, CurrentWeatherModel );
	}
}