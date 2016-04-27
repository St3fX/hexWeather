package org.stefx.hexweather;

//import com.util.ObjectUtil;
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

import js.Browser;
import js.Lib;

/**
 * ...
 * @author Stéphane ARZT
 */
class HexWeather 
{
	static var self:HexWeather;
	
	var _applicationAssembler:ApplicationAssembler;
	var _applicationContext:AbstractApplicationContext;
	
	var _injector:IBasicInjector;
	
	static public function main()
	{
		#if debug
			var proxy : LogProxyLayout = new LogProxyLayout();
			var controller:LogLayoutHTMLView = new LogLayoutHTMLView( proxy );
			proxy.addListener( new SimpleBrowserLayout( controller.consoleWrapperTaget ) );
			proxy.addListener( new JavaScriptConsoleLayout() );
			
			self = new HexWeather();
		#end
	}
	
	public function new()
	{
		this._init();
		this._registerView();
		this._build( this._getApplicationXml() );
	}
	
	function _getApplicationXml( ) : Xml
	{
		var source:String = "";
		var viewConfigName:String = "";
		
		#if js
			viewConfigName = "viewConfigJS";
		#end
		
		source = XmlReader.readXmlFile( "org/stefx/hexweather/configuration/context.xml" );
		
		return Xml.parse( source );
	}
	
	function _init()
	{
		//CoreFactory.setFastEvalMethod( ObjectUtil.fastEvalFromTarget );
		
		this._applicationAssembler = new ApplicationAssembler();
		this._applicationContext = this._applicationAssembler.getApplicationContext( "weather" );
		this._injector = this._applicationContext.getBasicInjector();
	}
	
	function _registerView()
	{
		#if js
			//this._applicationAssembler.getBuilderFactory( this._applicationContext ).getCoreFactory().register( "appRoot", Browser.document.getElementById( "app" ) );
			//var result:Array<Dynamic> = riot.Riot.mount( "#app", "weather" );
			Logger.DEBUG( "_registerView" );
			//this._applicationAssembler.getBuilderFactory( this._applicationContext ).getCoreFactory().register( "riotRoot", { layout: result[ 0 ] } );
		#end
	}
	
	function _build( xml:Xml )
	{
		var parser : ApplicationXMLParser = new ApplicationXMLParser();
		parser.parse( this._applicationAssembler, xml );
		this._applicationAssembler.buildEverything();
	}
	
}