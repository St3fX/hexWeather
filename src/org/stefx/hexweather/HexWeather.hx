package org.stefx.hexweather;

//import com.util.ObjectUtil;
import hex.compiler.parser.xml.XmlCompiler;
import hex.di.IBasicInjector;
import hex.ioc.assembler.AbstractApplicationContext;
import hex.ioc.assembler.ApplicationAssembler;
import hex.ioc.core.CoreFactory;
import hex.ioc.parser.xml.ApplicationXMLParser;
import hex.ioc.parser.xml.XmlReader;
import hex.log.layout.JavaScriptConsoleLayout;
import hex.log.layout.LogLayoutHTMLView;
import hex.log.layout.LogProxyLayout;
import hex.log.layout.SimpleBrowserLayout;
import hex.log.Logger;
import org.stefx.hexweather.service.wunderground.GetCurrentWeatherService;

import js.Browser;
import js.Lib;

/**
 * ...
 * @author Stéphane ARZT
 */
class HexWeather 
{
	static var self : HexWeather;
	
	var _applicationAssembler : ApplicationAssembler;
	var _applicationContext : AbstractApplicationContext;
	
	var _injector : IBasicInjector;
	
	static public function main()
	{
		#if debug
			var proxy : LogProxyLayout = new LogProxyLayout();
			var controller:LogLayoutHTMLView = new LogLayoutHTMLView( proxy );
			proxy.addListener( new SimpleBrowserLayout( controller.consoleWrapperTaget ) );
			proxy.addListener( new JavaScriptConsoleLayout() );
		#end

		self = new HexWeather();
	}
	
	public function new()
	{
		//this._init();
		//this._registerView();
		//this._build( this._getApplicationXml() );

		XmlCompiler.readXmlFile( "org/stefx/hexweather/configuration/context.xml" );
	}
	
	//function _getApplicationXml() : Xml
	//{
		//var source : String = "";
		//var viewConfigName : String = "";
		//
		//#if js
			//viewConfigName = "viewConfigJS";
		//#end
		//
		//source = XmlReader.readXmlFile( "org/stefx/hexweather/configuration/context.xml" );
		//
		//return Xml.parse( source );
	//}
	//
	//function _init()
	//{
		//_applicationAssembler = new ApplicationAssembler();
		//_applicationContext = this._applicationAssembler.getApplicationContext( "applicationContext" );
		//_injector = this._applicationContext.getBasicInjector();
	//}
	//
	//function _registerView()
	//{
		//#if js
			//this._applicationAssembler.getContextFactory( this._applicationContext ).getCoreFactory().register( "appRoot", Browser.document.getElementById( "app" ) );
		//#end
	//}
	//
	//function _build( xml:Xml )
	//{
		//var parser : ApplicationXMLParser = new ApplicationXMLParser();
		//parser.parse( this._applicationAssembler, xml );
		//this._applicationAssembler.buildEverything();
	//}
	
}