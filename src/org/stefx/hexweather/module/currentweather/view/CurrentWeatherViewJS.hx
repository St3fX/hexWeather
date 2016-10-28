package org.stefx.hexweather.module.currentweather.view;

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
		Logger.debug( "setCurrentMapWeather" );
		
		var currentObservation = currentWeatherVO.current_observation;
		
		var currentWeatherDiv : DivElement = cast js.Browser.document.querySelector( "#currentWeather" );
		currentWeatherDiv.innerHTML = "";
		
		var obsIconDiv : DivElement		= Browser.document.createDivElement();
		var titleDiv : DivElement		= Browser.document.createDivElement();
		var lastUpdateDiv : DivElement	= Browser.document.createDivElement();
		var observationDiv : DivElement	= Browser.document.createDivElement();

		obsIconDiv.id = "obsIcon";
		titleDiv.id = "title";
		lastUpdateDiv.id = "lastUpdate";
		observationDiv.id = "observation";
				
		var img : ImageElement = new Image();
		img.src = "./imgWeather/" + currentObservation.icon + ".png";
		img.alt = currentObservation.icon;
		
		titleDiv.innerHTML = CLocation.CITY + " (" + CLocation.STATE + ")";
		
		lastUpdateDiv.innerHTML = currentObservation.observation_time_rfc822;

		observationDiv.innerHTML = "<b>Temperature:</b> " + currentObservation.temp_c + "°C<br/>"
								 + "<b>Pressure:</b> " + currentObservation.pressure_mb + " mb<br/>"
								 + "<b>Wind:</b> " + currentObservation.wind_dir + " at " + currentWeatherVO.current_observation.wind_kph + " km/h<br/>"
								 + "<b>Humidity:</b> " + currentObservation.relative_humidity + "<br/>";
		
		obsIconDiv.appendChild( img );
		
		currentWeatherDiv.appendChild( obsIconDiv );
		currentWeatherDiv.appendChild( titleDiv );
		currentWeatherDiv.appendChild( lastUpdateDiv );
		currentWeatherDiv.appendChild( observationDiv );
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