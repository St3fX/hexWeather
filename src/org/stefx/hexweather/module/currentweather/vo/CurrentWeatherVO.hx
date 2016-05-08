package org.stefx.hexweather.module.currentweather.vo;
import haxe.Json;

/**
 * ...
 * @author Stéphane ARZT
 */
class CurrentWeatherVO
{
	public var response : Dynamic;
	public var current_observation : Dynamic;
	
	public function new()
	{
	}
}

/*
 * EXAMPLE OF DATASET
{
  "response": {
  "version":"0.1",
  "termsofService":"http://www.wunderground.com/weather/api/d/terms.html",
  "features": {
  "conditions": 1
  }
	}
  ,	"current_observation": {
		"image": {
		"url":"http://icons.wxug.com/graphics/wu2/logo_130x80.png",
		"title":"Weather Underground",
		"link":"http://www.wunderground.com"
		},
		"display_location": {
		"full":"Luxembourg, Luxembourg",
		"city":"Luxembourg",
		"state":"",
		"state_name":"Luxembourg",
		"country":"LU",
		"country_iso3166":"LU",
		"zip":"00000",
		"magic":"1",
		"wmo":"06590",
		"latitude":"49.61999893",
		"longitude":"6.21999979",
		"elevation":"379.00000000"
		},
		"observation_location": {
		"full":"Luxembourg, ",
		"city":"Luxembourg",
		"state":"",
		"country":"LU",
		"country_iso3166":"LU",
		"latitude":"49.62607956",
		"longitude":"6.20346022",
		"elevation":"1234 ft"
		},
		"estimated": {
		},
		"station_id":"ELLX",
		"observation_time":"Last Updated on April 29, 4:20 PM CEST",
		"observation_time_rfc822":"Fri, 29 Apr 2016 16:20:00 +0200",
		"observation_epoch":"1461939600",
		"local_time_rfc822":"Fri, 29 Apr 2016 16:53:08 +0200",
		"local_epoch":"1461941588",
		"local_tz_short":"CEST",
		"local_tz_long":"Europe/Luxembourg",
		"local_tz_offset":"+0200",
		"weather":"Clear",
		"temperature_string":"50 F (10 C)",
		"temp_f":50,
		"temp_c":10,
		"relative_humidity":"50%",
		"wind_string":"From the SSW at 13 MPH",
		"wind_dir":"SSW",
		"wind_degrees":210,
		"wind_mph":13,
		"wind_gust_mph":0,
		"wind_kph":20,
		"wind_gust_kph":0,
		"pressure_mb":"1016",
		"pressure_in":"30.01",
		"pressure_trend":"0",
		"dewpoint_string":"32 F (0 C)",
		"dewpoint_f":32,
		"dewpoint_c":0,
		"heat_index_string":"NA",
		"heat_index_f":"NA",
		"heat_index_c":"NA",
		"windchill_string":"NA",
		"windchill_f":"NA",
		"windchill_c":"NA",
		"feelslike_string":"50 F (10 C)",
		"feelslike_f":"50",
		"feelslike_c":"10",
		"visibility_mi":"N/A",
		"visibility_km":"N/A",
		"solarradiation":"--",
		"UV":"-1","precip_1hr_string":"-9999.00 in (-9999.00 mm)",
		"precip_1hr_in":"-9999.00",
		"precip_1hr_metric":"--",
		"precip_today_string":"0.00 in (0.0 mm)",
		"precip_today_in":"0.00",
		"precip_today_metric":"0.0",
		"icon":"clear",
		"icon_url":"http://icons.wxug.com/i/c/k/clear.gif",
		"forecast_url":"http://www.wunderground.com/global/stations/06590.html",
		"history_url":"http://www.wunderground.com/history/airport/ELLX/2016/4/29/DailyHistory.html",
		"ob_url":"http://www.wunderground.com/cgi-bin/findweather/getForecast?query=49.62607956,6.20346022",
		"nowcast":""
	}
}
*/