package org.stefx.hexweather.module.forecasttenday.view;

import hex.log.Logger;
import js.Browser;
import js.html.DOMElement;
import js.html.DivElement;
import org.stefx.hexweather.module.forecasttenday.vo.ForecastTenDayVO;

/**
 * ...
 * @author Stéphane ARZT
 */
class ForecastTenDayViewJS implements IForecastTenDayView
{

	var _layout : DOMElement;

	public function new( layout : DOMElement ) 
	{
		this._layout = layout;
	}
	
	public function setForecastTenDay( forecastTenDayVO : ForecastTenDayVO ) : Void
	{
		Logger.debug( "setForecastTenDay" );
		
		var forecastDay = forecastTenDayVO.forecast.simpleforecast.forecastday;
		for ( i in 0...10 )
		{
			var div : DivElement = ForecastCellRendererViewJS.getForecastCellRenderer( forecastDay[ i ] );
			( cast js.Browser.document.querySelector( "#forecast" ) ).appendChild( div );
		}
	}
	
	@:isVar public var visible( get, set ) : Bool;
	
	function get_visible() : Bool 
	{
		return visible;
	}

	public function set_visible( value : Bool ) : Bool 
	{
		return visible = value;
	}
	
}