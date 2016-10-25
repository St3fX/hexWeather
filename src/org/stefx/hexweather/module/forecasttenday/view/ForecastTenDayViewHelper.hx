package org.stefx.hexweather.module.forecasttenday.view;

import hex.view.viewhelper.ViewHelper;
import org.stefx.hexweather.module.forecasttenday.model.IForecastTenDayModel;
import org.stefx.hexweather.module.forecasttenday.model.IForecastTenDayModelRO;
import org.stefx.hexweather.module.forecasttenday.view.IForecastTenDayView;
import org.stefx.hexweather.module.forecasttenday.model.IForecastTenDayModelListener;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;

/**
 * ...
 * @author Stéphane ARZT
 */
class ForecastTenDayViewHelper extends ViewHelper<IForecastTenDayView> implements IForecastTenDayModelListener
{
	var _layoutView : IForecastTenDayView;

	@Inject
	var _model : IForecastTenDayModelRO;
	
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

	public function onForecastTenDayLoaded( forecastTenDay : ForecastTenDayVO ) : Void
	{
		this._layoutView.setForecastTenDay( forecastTenDay );
	}
	
}