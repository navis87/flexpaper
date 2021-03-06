package com.devaldi.controls.flexpaper.utils
{
	import com.devaldi.streaming.IDocumentLoader;
	
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import flash.system.SecurityDomain;
	
	public class StreamUtil
	{
		private static var loaderCtx:LoaderContext;
		public static var DocLoader:IDocumentLoader;
		public static var ProgressiveLoading:Boolean;
		public static var loaderURL:String = "";
		
		public static function getExecutionContext():LoaderContext{
			if(loaderCtx == null){
				loaderCtx = new LoaderContext();
				loaderCtx.applicationDomain = ApplicationDomain.currentDomain;
				
				if(loaderCtx.hasOwnProperty("allowCodeImport")){
					loaderCtx["allowCodeImport"] = true;
				}
				
				if(loaderCtx.hasOwnProperty("allowLoadBytesCodeExecution")){
					loaderCtx["allowLoadBytesCodeExecution"] = true;
				}
				
			}
			return loaderCtx; 
		}
		
		public static function setExecutionContext(context:LoaderContext):void{
			if(context!=null)
				loaderCtx = context;
		}
	}
}