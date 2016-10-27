package org.stefx.hexweather.module.currentweathermap.model;

/**
 * @author Stéphane ARZT
 */
interface ICurrentWeatherMapModelListener
{
	function onCurrentWeatherMapLoaded( mapUrl : String ) : Void;
}