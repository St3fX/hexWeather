package org.stefx.hexweather.module.currentweathermap.model;
import hex.model.IModelRO;

/**
 * ...
 * @author Stéphane ARZT
 */
interface ICurrentWeatherMapModelRO extends IModelRO<ICurrentWeatherMapModelListener>
{
	function getCurrentWeatherMap() : Void;
}