package org.stefx.hexweather.module.forecasttenday.model;
import hex.model.ModelDispatcher;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;

/**
 * ...
 * @author Stéphane ARZT
 */
class ForecastTenDayModelDispatcher extends ModelDispatcher<IForecastTenDayModelListener> implements IForecastTenDayModelListener
{

	public function new() 
	{
		super();
	}
	
	public function onForecastTenDayLoaded( forecastTenDayVO : ForecastTenDayVO ) 
	{
	}
		
}