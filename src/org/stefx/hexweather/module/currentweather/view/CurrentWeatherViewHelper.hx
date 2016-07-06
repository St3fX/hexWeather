package org.stefx.hexweather.module.currentweather.view;

import hex.view.viewhelper.ViewHelper;
import org.stefx.hexweather.module.currentweather.model.ICurrentWeatherModelRO;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;
import org.stefx.hexweather.module.currentweather.model.ICurrentWeatherModelListener;
import hex.log.Logger;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherViewHelper extends ViewHelper<ICurrentWeatherView> implements ICurrentWeatherModelListener
{
	var _layoutView : ICurrentWeatherView;

	@Inject
	var _model : ICurrentWeatherModelRO;
	
	public function new() 
	{
		super();
	}
	
	override function _initialize() : Void 
	{
		super._initialize();
		
		this._layoutView = cast this._view;
		
		Logger.DEBUG( this._layoutView );
		
		this._model.addListener( this );
	}

	public function onCurrentWeatherLoaded( currentWeather : CurrentWeatherVO ) : Void
	{
		this._layoutView.setCurrentWeather( currentWeather );
	}
	
}