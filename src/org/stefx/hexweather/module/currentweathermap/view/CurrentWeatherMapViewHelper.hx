package org.stefx.hexweather.module.currentweathermap.view;

import hex.view.viewhelper.ViewHelper;
import hex.log.Logger;
import org.stefx.hexweather.module.currentweathermap.model.ICurrentWeatherMapModelListener;
import org.stefx.hexweather.module.currentweathermap.model.ICurrentWeatherMapModelRO;
import org.stefx.hexweather.module.currentweathermap.view.ICurrentWeatherMapView;
import org.stefx.hexweather.module.currentweathermap.vo.CurrentWeatherMapVO;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherMapViewHelper extends ViewHelper<ICurrentWeatherMapView> implements ICurrentWeatherMapModelListener
{
	var _layoutView : ICurrentWeatherMapView;

	@Inject
	var _model : ICurrentWeatherMapModelRO;
	
	public function new() 
	{
		super();
	}
	
	override function _initialize() : Void 
	{
		super._initialize();

		this._layoutView = cast this._view;
		this._model.addListener( this );
	}

	public function onCurrentWeatherMapLoaded( currentWeatherMap : CurrentWeatherMapVO ) : Void
	{
		this._layoutView.setCurrentWeatherMap( currentWeatherMap );
	}
	
}