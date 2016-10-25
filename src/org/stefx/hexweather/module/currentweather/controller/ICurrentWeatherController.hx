package org.stefx.hexweather.module.currentweather.controller;
import hex.control.controller.IController;

/**
 * @author Stéphane ARZT
 */
interface ICurrentWeatherController extends IController
{
	function getCurrentWeather() : IObservable;
}