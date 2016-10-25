package org.stefx.hexweather.module.forecasttenday.model;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;

/**
 * ...
 * @author Stéphane ARZT
 */
class ForecastTenDayModel implements IForecastTenDayModel
{

	var _forecastTenDayVO : ForecastTenDayVO;
	
	public var dispatcher : ForecastTenDayModelDispatcher;

	public function new() 
	{
		dispatcher = new ForecastTenDayModelDispatcher();
	}
	
	public function setForecastTenDay( forecastTenDayVO : ForecastTenDayVO ) 
	{
		this._forecastTenDayVO = forecastTenDayVO;
		dispatcher.onForecastTenDayLoaded( this._forecastTenDayVO );
	}
	
	public function getForecastTenDay() : ForecastTenDayVO 
	{
		return this._forecastTenDayVO;
	}
	
	public function addListener( listener : IForecastTenDayModelListener ) : Void 
	{
		this.dispatcher.addListener( listener );
	}
	
	public function removeListener( listener : IForecastTenDayModelListener ) : Void 
	{
		this.dispatcher.removeListener( listener );
	}
	
}