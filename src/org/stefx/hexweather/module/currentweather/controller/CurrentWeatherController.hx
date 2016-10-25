package org.stefx.hexweather.module.currentweather.controller;

import hex.control.controller.Controller;
import hex.control.controller.IObservable;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherController extends Controller implements ICurrentWeatherController
{
	@CommandClass( "org.stefx.hexweather.module.currentweather.controller.LoadCurrentWeather" );
	public function getCurrentWeather() : IObservable {}
}