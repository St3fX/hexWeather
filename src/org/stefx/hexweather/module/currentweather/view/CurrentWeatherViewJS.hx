package org.stefx.hexweather.module.currentweather.view;

import hex.log.Logger;
import js.html.DOMElement;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherViewJS implements ICurrentWeatherView
{
	var _layout:DOMElement;

	public function new( layout : DOMElement ) 
	{
		this._layout = layout;
	}
	
	public function setCurrentWeather( currentWeatherVO : CurrentWeatherVO ) : Void 
	{
		Logger.DEBUG( currentWeatherVO );
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