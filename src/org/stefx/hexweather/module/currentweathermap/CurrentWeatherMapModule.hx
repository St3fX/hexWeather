package org.stefx.hexweather.module.currentweathermap;

import hex.config.stateful.IStatefulConfig;
import hex.config.stateless.StatelessCommandConfig;
import hex.config.stateless.StatelessModelConfig;
import hex.module.Module;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.dependency.RuntimeDependencies;

import org.stefx.hexweather.module.currentweathermap.view.CurrentWeatherMapViewHelper;
import org.stefx.hexweather.module.currentweathermap.view.CurrentWeatherMapViewJS;
import org.stefx.hexweather.module.currentweathermap.message.CurrentWeatherMapModuleMessage;
import org.stefx.hexweather.module.currentweathermap.controller.LoadCurrentWeatherMapCommand;
import org.stefx.hexweather.module.currentweathermap.model.CurrentWeatherMapModel;
import org.stefx.hexweather.module.currentweathermap.model.ICurrentWeatherMapModel;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherMapModule extends Module
{

	public function new() 
	{
		super();
		
//		this._addStatefulConfigs( [ serviceConfig ] );
		this._addStatelessConfigClasses( [ CurrentWeatherMapCommandConfig, CurrentWeatherMapModelConfig ] );
		this.buildView();
		this._dispatchPrivateMessage( CurrentWeatherMapModuleMessage.LOAD_CURRENT_WEATHER_MAP );

		var timer = new haxe.Timer( 30 * 60000 );
		timer.run = function() 
		{
			this._dispatchPrivateMessage( CurrentWeatherMapModuleMessage.LOAD_CURRENT_WEATHER_MAP );
		}
		
	}
	
	override function _getRuntimeDependencies() : IRuntimeDependencies
	{
		var rd = new RuntimeDependencies();
		return rd;
	}

	function buildView() : Void
	{
		this.buildViewHelper( CurrentWeatherMapViewHelper, new CurrentWeatherMapViewJS( js.Browser.document.querySelector( ".currentMap" ) ) );
	}
}

private class CurrentWeatherMapCommandConfig extends StatelessCommandConfig
{
	override public function configure():Void
	{
		this.map( CurrentWeatherMapModuleMessage.LOAD_CURRENT_WEATHER_MAP, LoadCurrentWeatherMapCommand );
	}
}

private class CurrentWeatherMapModelConfig extends StatelessModelConfig
{
	override public function configure() : Void
	{
		this.map( ICurrentWeatherMapModel, CurrentWeatherMapModel );
	}
}