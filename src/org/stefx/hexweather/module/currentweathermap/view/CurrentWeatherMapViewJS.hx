package org.stefx.hexweather.module.currentweathermap.view;

import hex.log.Logger;
import js.Browser;
import js.html.DivElement;
import js.html.DOMElement;
import js.html.ImageElement;
import js.html.Image;
import js.html.Text;
import js.html.TextAreaElement;
import org.stefx.hexweather.constant.CLocation;
import org.stefx.hexweather.module.currentweather.vo.CurrentWeatherVO;
import org.stefx.hexweather.module.currentweathermap.vo.CurrentWeatherMapVO;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherMapViewJS implements ICurrentWeatherMapView
{
	var _layout:DOMElement;

	public function new( layout : DOMElement ) 
	{
		this._layout = layout;
	}
	
	public function setCurrentWeatherMap( currentWeatherMapVO : CurrentWeatherMapVO ) : Void
	{
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