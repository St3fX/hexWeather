package org.stefx.hexweather.module.currentweatherconfig;

import hex.config.stateful.IStatefulConfig;
import hex.config.stateless.StatelessCommandConfig;
import hex.config.stateless.StatelessModelConfig;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.dependency.RuntimeDependencies;
import hex.module.Module;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherConfigModule extends Module
{

	public function new() 
	{
		super();
		getLogger().debug( "ApplicationConfiguratorModule::Constructor" );
		
//		this._addStatefulConfigs( [ serviceConfig ] );
		this._addStatelessConfigClasses( [ ApplicationConfiguratorCommandConfig, ApplicationConfiguratorModelConfig ] );
		this.buildView();
//		this._dispatchPrivateMessage( CurrentWeatherModuleMessage.LOAD_CURRENT_WEATHER );
		
	}
	
	override function _getRuntimeDependencies() : IRuntimeDependencies
	{
		var rd = new RuntimeDependencies();
		return rd;
	}

	function buildView() : Void
	{
//		this.buildViewHelper( CurrentWeatherViewHelper, new CurrentWeatherViewJS( js.Browser.document.querySelector( ".currentWeather" ) ) );
	}
}

private class ApplicationConfiguratorCommandConfig extends StatelessCommandConfig
{
	override public function configure():Void
	{
//		this.map( CurrentWeatherModuleMessage.LOAD_CURRENT_WEATHER, LoadCurrentWeatherCommand );
	}
}

private class ApplicationConfiguratorModelConfig extends StatelessModelConfig
{
	override public function configure() : Void
	{
//		this.mapModel( ICurrentWeatherModel, CurrentWeatherModel );
	}
}