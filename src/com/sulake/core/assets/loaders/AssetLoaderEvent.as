package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_924:String = "AssetLoaderEventUnload";
      
      public static const const_45:String = "AssetLoaderEventError";
      
      public static const const_932:String = "AssetLoaderEventOpen";
      
      public static const const_994:String = "AssetLoaderEventProgress";
      
      public static const const_871:String = "AssetLoaderEventStatus";
      
      public static const const_30:String = "AssetLoaderEventComplete";
       
      
      private var var_355:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_355 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_355;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_355);
      }
   }
}
