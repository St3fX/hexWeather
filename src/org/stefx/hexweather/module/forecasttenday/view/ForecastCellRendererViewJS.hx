package org.stefx.hexweather.module.forecasttenday.view;
import js.Browser;
import js.html.DOMElement;
import js.html.DivElement;
import js.html.Image;
import js.html.Text;

/**
 * ...
 * @author Stéphane ARZT
 */
class ForecastCellRendererViewJS
{

	public function new() 
	{
	}
	
	public static function getForecastCellRenderer( data : Dynamic ) : DivElement
	{
		var divElement : DivElement = Browser.document.createDivElement();
		divElement.className = "forecastDay";
		
		var img : Image = new Image();
		img.className = "forecasdayIcon";
		img.src = "./imgWeather/" + data.icon + ".png";
		img.alt = data.icon;
		divElement.appendChild( img );
		
		var forecastDate : DivElement = Browser.document.createDivElement();
		forecastDate.className = "forecastDate";
		forecastDate.innerHTML = data.date.weekday + ", " + data.date.day + " " + data.date.monthname + " " + data.date.year;
		divElement.appendChild( forecastDate );
		
		var forecastObservation : DivElement = Browser.document.createDivElement();
		forecastObservation.className = "forecastObservation";
		forecastObservation.innerHTML = "<span class='forecastTemperature'>" + data.low.celsius + "°C / " + data.high.celsius + "°C</span><br/>"
									  + "<span><b>Wind: </b>" +  data.avewind.dir + " at " + data.avewind.kph + " km/h</span><br/>"
									  + "<span><b>Humidity: </b>" +  data.avehumidity + "%</span><br/>";
		divElement.appendChild( forecastObservation );
		
		return divElement;
	}
}