package org.stefx.hexweather.module.currentweatherconfig.view;
import js.Browser;
import js.html.DOMElement;
import js.html.DivElement;
import js.html.InputElement;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherConfigViewJS
{
	var _layout:DOMElement;

	public function new( layout : DOMElement ) 
	{
		this._layout = layout;
		var configurationDiv : DivElement = cast Browser.document.querySelector( "#applicationInitialisation" );
		var inputText : InputElement = new InputElement();
		inputText.width = 300;
		configurationDiv.appendChild( inputText );
		
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